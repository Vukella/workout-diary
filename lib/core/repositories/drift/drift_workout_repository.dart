import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/workout_repository.dart';
import 'package:workout_diary/features/workout/data/workout.dart';
import 'package:workout_diary/features/workout/data/workout_exercise_entry.dart';

class DriftWorkoutRepository implements WorkoutRepository {
  final AppDatabase _db;

  DriftWorkoutRepository(this._db);

  Workout _toWorkout(WorkoutData row) =>
      Workout(id: row.id, name: row.name, description: row.description);

  @override
  Stream<List<Workout>> watchAll() {
    return _db.select(_db.workout).watch().map(
          (rows) => rows.map(_toWorkout).toList(),
    );
  }

  @override
  Future<Workout?> getById(int id) async {
    final query = _db.select(_db.workout)..where((row) => row.id.equals(id));
    final row = await query.getSingleOrNull();
    return row == null ? null : _toWorkout(row);
  }

  @override
  Future<void> save(Workout workout) {
    return _db.into(_db.workout).insertOnConflictUpdate(
      WorkoutCompanion(
          id: workout.id != null ? Value(workout.id!) : const Value.absent(),
          name: Value(workout.name),
        description: Value(workout.description)
      ),
    );
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.workout)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Stream<Workout?> watchById(int id) {
    return (_db.select(_db.workout)
      ..where((t) => t.id.equals(id)))
        .watchSingleOrNull()
        .map((row) => row != null ? _toWorkout(row) : null);
  }

  @override
  Stream<List<WorkoutExerciseEntry>> watchExercises(int workoutId) {
    final query = _db.select(_db.workoutExercise).join([
      innerJoin(
        _db.exercise,
        _db.exercise.id.equalsExp(_db.workoutExercise.exerciseId),
      ),
    ])
      ..where(_db.workoutExercise.workoutId.equals(workoutId))
      ..orderBy([OrderingTerm.asc(_db.workoutExercise.plannedExerciseOrder)]);

    return query.watch().map((rows) => rows.map((row) {
      final we = row.readTable(_db.workoutExercise);
      final ex = row.readTable(_db.exercise);
      return WorkoutExerciseEntry(
        workoutExerciseId: we.id,
        exerciseId: ex.id,
        exerciseName: ex.name,
        plannedOrder: we.plannedExerciseOrder,
      );
    }).toList());
  }

  @override
  Future<void> addExercise(int workoutId, int exerciseId) async {
    final existing = await (_db.select(_db.workoutExercise)
      ..where((row) => row.workoutId.equals(workoutId)))
        .get();

    final nextOrder = existing.fold<int>(
        0, (prev, e) => e.plannedExerciseOrder > prev ? e.plannedExerciseOrder : prev) + 1;

    await _db.into(_db.workoutExercise).insert(
      WorkoutExerciseCompanion(
        workoutId: Value(workoutId),
        exerciseId: Value(exerciseId),
        plannedExerciseOrder: Value(nextOrder),
      ),
    );
  }
}
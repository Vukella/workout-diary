import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart' hide Workout;
import 'package:workout_diary/core/repositories/workout_repository.dart';
import 'package:workout_diary/features/workout/data/workout.dart';

class DriftWorkoutRepository implements WorkoutRepository {
  final AppDatabase _db;

  DriftWorkoutRepository(this._db);

  Workout _toWorkout(WorkoutData row) =>
      Workout(id: row.id, name: row.name);

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
        id: Value(workout.id),
        name: Value(workout.name),
      ),
    );
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.workout)..where((row) => row.id.equals(id));
    return query.go();
  }
}
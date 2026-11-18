import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/exercise_repository.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/features/exercise/data/metric.dart';
import 'package:workout_diary/features/exercise/data/muscle.dart';

class DriftExerciseRepository implements ExerciseRepository{
  final AppDatabase _db;

  DriftExerciseRepository(this._db);

  Exercise _toExercise(ExerciseData row) =>
      Exercise(id: row.id, name: row.name);

  @override
  Stream<List<Exercise>> watchAll() {
    return _db.select(_db.exercise).watch().map(
            (rows) => rows.map(_toExercise).toList()
    );
  }

  @override
  Future<Exercise?> getById(int id) async{
    final query = _db.select(_db.exercise)..where((row) => row.id.equals(id));
    final row = await query.getSingleOrNull();
    return row == null ? null : _toExercise(row);
  }

  @override
  Future<void> save(Exercise exercise) {
    return _db.into(_db.exercise).insertOnConflictUpdate(
      ExerciseCompanion(
        id: exercise.id == null ? const Value.absent() : Value(exercise.id!),
        name: Value(exercise.name),
        description: Value(exercise.description),
        picture: Value(exercise.picture),
      ),
    );
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.exercise)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Stream<List<Metric>> watchAllMetrics() {
    return _db.select(_db.metric).watch().map(
          (rows) => rows.map((row) => Metric(
        id: row.id,
        name: row.name,
        slug: row.slug,
      )).toList(),
    );
  }

  @override
  Stream<List<Muscle>> watchAllMuscles() {
    return _db.select(_db.muscle).watch().map(
          (rows) => rows.map((row) => Muscle(
        id: row.id,
        name: row.name,
        group: row.muscleGroup ?? '',
      )).toList(),
    );
  }

  @override
  Stream<Exercise?> watchById(int id) {
    final query = _db.select(_db.exercise)
      ..where((row) => row.id.equals(id));
    return query.watch().map((rows) => rows.isEmpty ? null : _toExercise(rows.first));
  }
}
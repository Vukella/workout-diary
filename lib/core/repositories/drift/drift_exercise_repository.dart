import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart' hide Exercise;
import 'package:workout_diary/core/repositories/exercise_repository.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';

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
        id: Value(exercise.id),
        name: Value(exercise.name),
      ),
    );
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.exercise)..where((row) => row.id.equals(id));
    return query.go();
  }
}
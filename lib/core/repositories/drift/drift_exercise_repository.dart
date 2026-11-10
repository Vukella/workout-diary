import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/exercise_repository.dart';

class DriftExerciseRepository implements ExerciseRepository{
  final AppDatabase _dependency;

  DriftExerciseRepository(this._dependency);

  @override
  Future<void> delete(int id) {
    final query = _dependency.delete(_dependency.exercise)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Future<ExerciseData?> getById(int id) {
    final query = _dependency.select(_dependency.exercise)..where((row) => row.id.equals(id));
    return query.getSingleOrNull();
  }

  @override
  Future<void> save(ExerciseData exercise) {
    final query = _dependency.into(_dependency.exercise);
    return query.insertOnConflictUpdate(exercise);
  }

  @override
  Stream<List<ExerciseData>> watchAll() {
    return _dependency.select(_dependency.exercise).watch();
  }
}
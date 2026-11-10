import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/workout_repository.dart';

class DriftWorkoutRepository implements WorkoutRepository{
  final AppDatabase _dependency;
  
  DriftWorkoutRepository(this._dependency);

  @override
  Future<void> delete(int id) {
    final query = _dependency.delete(_dependency.workout)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Future<WorkoutData?> getById(int id) {
    final query = _dependency.select(_dependency.workout)..where((row) => row.id.equals(id));
    return query.getSingleOrNull();
  }

  @override
  Future<void> save(WorkoutData workout) {
    final query = _dependency.into(_dependency.workout);
    return query.insertOnConflictUpdate(workout);
  }

  @override
  Stream<List<WorkoutData>> watchAll() {
    return _dependency.select(_dependency.workout).watch();
  }
}
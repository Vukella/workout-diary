import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/database/tables/log_tables.dart';
import 'package:workout_diary/core/repositories/log_repository.dart';

class DriftLogRepository implements LogRepository{
  final AppDatabase _dependency;

  DriftLogRepository (this._dependency);

  @override
  Future<void> delete(int id) {
    final query = _dependency.delete(_dependency.workoutLog)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Future<WorkoutLogData?> getById(int id) {
    final query = _dependency.select(_dependency.workoutLog)..where((row) => row.id.equals(id));
    return query.getSingleOrNull();
  }

  @override
  Future<void> save(WorkoutLogData workoutLog) {
    final query = _dependency.into(_dependency.workoutLog);
    return query.insertOnConflictUpdate(workoutLog);
  }

  @override
  Stream<List<WorkoutLogData>> watchAll() {
    return _dependency.select(_dependency.workoutLog).watch();
  }
}
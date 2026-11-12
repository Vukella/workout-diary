import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/log_repository.dart';
import 'package:workout_diary/features/history/data/log_workout.dart';

class DriftLogRepository implements LogRepository {
  final AppDatabase _db;

  DriftLogRepository(this._db);

  WorkoutLog _toWorkoutLog(WorkoutLogData row) => WorkoutLog(
    id: row.id,
    beginningTime: row.beginningTime,
    endingTime: row.endingTime,
    workoutId: row.workoutId,
  );

  @override
  Stream<List<WorkoutLog>> watchAll() {
    return _db.select(_db.workoutLog).watch().map(
          (rows) => rows.map(_toWorkoutLog).toList(),
    );
  }

  @override
  Future<WorkoutLog?> getById(int id) async {
    final query = _db.select(_db.workoutLog)..where((row) => row.id.equals(id));
    final row = await query.getSingleOrNull();
    return row == null ? null : _toWorkoutLog(row);
  }

  @override
  Future<void> save(WorkoutLog workoutLog) {
    return _db.into(_db.workoutLog).insertOnConflictUpdate(
      WorkoutLogCompanion(
        id: Value(workoutLog.id),
        beginningTime: Value(workoutLog.beginningTime),
        endingTime: Value(workoutLog.endingTime),
        workoutId: Value(workoutLog.workoutId),
      ),
    );
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.workoutLog)..where((row) => row.id.equals(id));
    return query.go();
  }
}
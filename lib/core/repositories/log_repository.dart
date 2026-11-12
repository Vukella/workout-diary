import 'package:workout_diary/features/history/data/log_workout.dart';

abstract class LogRepository {
  Stream<List<WorkoutLog>> watchAll();
  Future<WorkoutLog?> getById(int id);
  Future<void> save(WorkoutLog workoutLog);
  Future<void> delete(int id);
}
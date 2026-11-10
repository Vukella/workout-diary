import 'package:workout_diary/core/database/app_database.dart';

abstract class LogRepository {
  // Live list for the exercise picker screen —
  // rebuilds automatically when exercises are added or changed
  Stream<List<WorkoutLogData>> watchAll();

  // One-time lookup before navigating to a detail screen —
  // returns null if the ID doesn't exist
  Future<WorkoutLogData?> getById(int id);

  // Persists a new exercise (or updates an existing one) —
  // returns nothing, just completes when done
  Future<void> save(WorkoutLogData workoutLog);

  // Removes an exercise by ID
  Future<void> delete(int id);
}
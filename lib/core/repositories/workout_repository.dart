import '../../features/workout/data/workout.dart';

abstract class WorkoutRepository {
  // Live list for the machine picker screen —
  // rebuilds automatically when exercises are added or changed
  Stream<List<Workout>> watchAll();

  // One-time lookup before navigating to a detail screen —
  // returns null if the ID doesn't exist
  Future<Workout?> getById(int id);

  // Persists a new machine (or updates an existing one) —
  // returns nothing, just completes when done
  Future<void> save(Workout workout);

  // Removes a machine by ID
  Future<void> delete(int id);
}
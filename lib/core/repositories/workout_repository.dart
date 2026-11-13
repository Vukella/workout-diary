import 'package:workout_diary/features/workout/data/workout_exercise_entry.dart';

import '../../features/workout/data/workout.dart';

abstract class WorkoutRepository {
  Stream<List<Workout>> watchAll();
  Future<Workout?> getById(int id);
  Future<void> save(Workout workout);
  Future<void> delete(int id);

  Stream<Workout?> watchById(int id);
  Stream<List<WorkoutExerciseEntry>> watchExercises(int workoutId);
}
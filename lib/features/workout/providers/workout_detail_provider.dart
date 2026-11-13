import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/providers/workout_provider.dart';
import '../data/workout.dart';
import '../data/workout_exercise_entry.dart';

part 'workout_detail_provider.g.dart';

@riverpod
Stream<Workout?> workoutDetail(Ref ref, int id) {
  return ref.watch(workoutRepositoryProvider).watchById(id);
}

@riverpod
Stream<List<WorkoutExerciseEntry>> workoutExercises(Ref ref, int workoutId) {
  return ref.watch(workoutRepositoryProvider).watchExercises(workoutId);
}
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/features/workout/data/workout.dart';
import 'package:workout_diary/core/providers/workout_provider.dart';

part 'workouts_provider.g.dart';

@riverpod
Stream<List<Workout>> workouts(Ref ref) {
  return ref.watch(workoutRepositoryProvider).watchAll();
}
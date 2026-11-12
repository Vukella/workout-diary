import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/features/history/data/log_workout.dart';
import 'package:workout_diary/core/providers/log_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'log_workout_provider.g.dart';

@riverpod
Stream<List<WorkoutLog>> workoutsLog(Ref ref) {
  return ref.watch(workoutLogRepositoryProvider).watchAll();
}
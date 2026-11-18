import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/core/providers/exercise_provider.dart';
import '../data/metric.dart';
import '../data/muscle.dart';

part 'exercise_provider.g.dart';

@riverpod
Stream<List<Exercise>> exercises(Ref ref) {
  return ref.watch(exerciseRepositoryProvider).watchAll();
}

@riverpod
Stream<List<Muscle>> muscles(Ref ref) {
  return ref.watch(exerciseRepositoryProvider).watchAllMuscles();
}

@riverpod
Stream<List<Metric>> metrics(Ref ref) {
  return ref.watch(exerciseRepositoryProvider).watchAllMetrics();
}

@riverpod
Stream<Exercise?> exerciseDetail(Ref ref, int id) {
  return ref.watch(exerciseRepositoryProvider).watchById(id);
}
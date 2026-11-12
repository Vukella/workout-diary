import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/core/providers/exercise_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'exercise_provider.g.dart';

@riverpod
Stream<List<Exercise>> exercises(Ref ref) {
  return ref.watch(exerciseRepositoryProvider).watchAll();
}
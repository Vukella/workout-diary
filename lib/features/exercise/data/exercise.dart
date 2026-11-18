import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_diary/features/exercise/data/exercise_metric_entry.dart';
import 'package:workout_diary/features/exercise/data/muscle.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    int? id,
    required String name,
    String? description,
    String? picture,
    @Default([]) List<Muscle> muscles,
    @Default([]) List<ExerciseMetricEntry> metrics,
  }) = _Exercise;
}
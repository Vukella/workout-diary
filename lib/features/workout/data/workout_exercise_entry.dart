import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_exercise_entry.freezed.dart';

@freezed
abstract class WorkoutExerciseEntry with _$WorkoutExerciseEntry {
  const factory WorkoutExerciseEntry({
    required int workoutExerciseId,
    required int exerciseId,
    required String exerciseName,
    required int plannedOrder,
  }) = _WorkoutExerciseEntry;
}
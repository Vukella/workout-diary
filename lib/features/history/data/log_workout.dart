import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_workout.freezed.dart';

@freezed
abstract class WorkoutLog with _$WorkoutLog {
  const factory WorkoutLog({
    required int id,
    required DateTime beginningTime,
    DateTime? endingTime,
    required int workoutId,
  }) = _WorkoutLog;
}
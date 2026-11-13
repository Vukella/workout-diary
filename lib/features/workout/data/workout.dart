import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';

@freezed
abstract class Workout with _$Workout {
  const factory Workout({
    int? id,
    required String name,
    String? description,
  }) = _Workout;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_metric_entry.freezed.dart';

@freezed
abstract class ExerciseMetricEntry with _$ExerciseMetricEntry {
const factory ExerciseMetricEntry({
  required int exerciseMetricId,
  required int metricId,
  required String metricName,
  required int metricOrder,
}) = _ExerciseMetricEntry;
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metric.freezed.dart';

@freezed
abstract class Metric with _$Metric {
  const factory Metric({
    required int id,
    required String name,
    required String slug,
  }) = _Metric;
}
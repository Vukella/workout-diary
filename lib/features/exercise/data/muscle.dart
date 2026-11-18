import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle.freezed.dart';

@freezed
abstract class Muscle with _$Muscle {
  const factory Muscle({
    required int id,
    required String name,
    required String group
  }) = _Muscle;
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine.freezed.dart';

@freezed
abstract class Machine with _$Machine {
  const factory Machine({
    required int id,
    required String name,
  }) = _Machine;
}
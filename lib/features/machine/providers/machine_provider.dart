import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/features/machine/data/machine.dart';
import 'package:workout_diary/core/providers/machine_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'machine_provider.g.dart';

@riverpod
Stream<List<Machine>> machines(Ref ref) {
  return ref.watch(machineRepositoryProvider).watchAll();
}
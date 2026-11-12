import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/providers/app_database_provider.dart';
import 'package:workout_diary/core/repositories/drift/drift_machine_repository.dart';

import '../repositories/machine_repository.dart';

part 'machine_provider.g.dart';

@Riverpod(keepAlive: true)
MachineRepository machineRepository(Ref ref){
  final db = ref.watch(appDatabaseProvider);
  return DriftMachineRepository(db);
}
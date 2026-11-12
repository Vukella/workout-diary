import 'package:workout_diary/features/machine/data/machine.dart';

abstract class MachineRepository {
  Stream<List<Machine>> watchAll();
  Future<Machine?> getById(int id);
  Future<void> save(Machine machine);
  Future<void> delete(int id);
}
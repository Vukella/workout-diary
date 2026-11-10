import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/machine_repository.dart';

class DriftMachineRepository implements MachineRepository{
  final AppDatabase _dependency;

  DriftMachineRepository(this._dependency);

  @override
  Future<void> delete(int id) {
    final query = _dependency.delete(_dependency.machine)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Future<MachineData?> getById(int id) {
    final query = _dependency.select(_dependency.machine)..where((row) => row.id.equals(id));
    return query.getSingleOrNull();

  }

  @override
  Future<void> save(MachineData machine) {
    final query = _dependency.into(_dependency.machine);
    return query.insertOnConflictUpdate(machine);
  }

  @override
  Stream<List<MachineData>> watchAll() {
    return _dependency.select(_dependency.machine).watch();
  }
}
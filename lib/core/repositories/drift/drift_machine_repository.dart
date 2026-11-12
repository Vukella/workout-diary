import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart' hide Machine;
import 'package:workout_diary/core/repositories/machine_repository.dart';
import '../../../features/machine/data/machine.dart';

class DriftMachineRepository implements MachineRepository{
  final AppDatabase _db;

  DriftMachineRepository(this._db);

  Machine _toMachine(MachineData row) =>
      Machine(id: row.id, name: row.name);

  @override
  Stream<List<Machine>> watchAll() {
    return _db.select(_db.machine).watch().map(
        (rows) => rows.map(_toMachine).toList(),
    );
  }

  @override
  Future<Machine?> getById(int id) async{
    final query = _db.select(_db.machine)..where((row) => row.id.equals(id));
    final row = await query.getSingleOrNull();
    return row == null ? null : _toMachine(row);

  }

  @override
  Future<void> save(Machine machine) {
        return _db.into(_db.machine).insertOnConflictUpdate(
            MachineCompanion(
              id: Value(machine.id),
              name: Value(machine.name),
            ),
        );
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.machine)..where((row) => row.id.equals(id));
    return query.go();
  }

}
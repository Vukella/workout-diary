// Machine, Machine_Setting

import 'package:drift/drift.dart';

enum WeightUnit {kg, lb}

class Machine extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get brand => text()();
  IntColumn get unit => intEnum<WeightUnit>()();
}

class MachineSetting extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text()(); //useful when machine has multiple places for setting up its adjustments for user
  RealColumn get minPosition => real()();
  RealColumn get maxPosition => real()();
  IntColumn get step => integer()();

  IntColumn get machineId => integer().references(Machine, #id)();
}
// Routine, Routine_Period

import 'package:drift/drift.dart';

class Routine extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

class RoutinePeriod extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get beginningDate => dateTime()();
  DateTimeColumn get endingDate => dateTime().nullable()();

  IntColumn get routineId => integer().references(Routine, #id)();
}
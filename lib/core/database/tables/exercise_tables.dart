// Exercise, Metric, Exercise_Metric, Exercise_Muscle, Muscle

import 'package:drift/drift.dart';

class Exercise extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get picture => text().nullable()();
  TextColumn get description => text().nullable()();
}

class Metric extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get slug => text()();
}

class ExerciseMetric extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get exerciseId => integer().references(Exercise, #id)();
  IntColumn get metricId => integer().references(Metric, #id)();
  IntColumn get metricOrder => integer()();
}

class Muscle extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get muscleGroup => text().nullable()();
}

class ExerciseMuscle extends Table {
  IntColumn get exerciseId => integer().references(Exercise, #id)();
  IntColumn get muscleId => integer().references(Muscle, #id)();

  @override
  Set<Column> get primaryKey => {exerciseId, muscleId};
}
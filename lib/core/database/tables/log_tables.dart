// Workout_Log, Exercise_Log, Exercise_Set, ES_EM, Selected_Setting

import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/tables/exercise_tables.dart';
import 'package:workout_diary/core/database/tables/workout_tables.dart';

import 'machine_tables.dart';

class WorkoutLog extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get beginningTime => dateTime()();
  DateTimeColumn get endingTime => dateTime().nullable()();

  IntColumn get workoutId => integer().references(Workout, #id)();
}

class ExerciseLog extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get order => integer()();
  DateTimeColumn get beginningTime => dateTime()();
  DateTimeColumn get endingTime => dateTime().nullable()();
  TextColumn get comment => text().nullable()();

  IntColumn get exerciseId => integer().references(Exercise, #id)();
  IntColumn get workoutLogId => integer().references(WorkoutLog, #id)();
}

class ExerciseSet extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get setOrder => integer()();
  BoolColumn get warmup => boolean()();
  TextColumn get comment => text().nullable()();
  DateTimeColumn get beginningTime => dateTime()();
  DateTimeColumn get endingTime => dateTime().nullable()();

  IntColumn get exerciseLogId => integer().references(ExerciseLog, #id)();
}

class ESEM extends Table {
  @override
  String get tableName => 'es_em';

  IntColumn get exerciseMetricId => integer().references(ExerciseMetric, #id)();
  IntColumn get exerciseSetId => integer().references(ExerciseSet, #id)();

  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {exerciseMetricId, exerciseSetId};
}

class SelectedSetting extends Table {
  IntColumn get exerciseLogId => integer().references(ExerciseLog, #id)();
  IntColumn get machineSettingId => integer().references(MachineSetting, #id)();

  IntColumn get selectedPosition => integer()();

  @override
  Set<Column> get primaryKey => {exerciseLogId, machineSettingId};
}
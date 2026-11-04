import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:workout_diary/core/database/tables/exercise_tables.dart';
import 'package:workout_diary/core/database/tables/log_tables.dart';
import 'package:workout_diary/core/database/tables/machine_tables.dart';
import 'package:workout_diary/core/database/tables/routine_tables.dart';
import 'package:workout_diary/core/database/tables/workout_tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Exercise, Metric, ExerciseMetric, Muscle, ExerciseMuscle, WorkoutLog, ExerciseLog, ExerciseSet, ESEM, SelectedSetting, Machine, MachineSetting, Routine, RoutinePeriod, Workout, RoutineWorkout, WorkoutExercise])
class AppDatabase extends _$AppDatabase {
  @override
  int get schemaVersion => 1;

  AppDatabase() : super(_openConnection());

}

QueryExecutor _openConnection() {
  return driftDatabase(name: 'workout_diary');
}
// Workout, Routine_Workout, Workout_Exercise

import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/tables/exercise_tables.dart';
import 'package:workout_diary/core/database/tables/routine_tables.dart';

class Workout extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

class RoutineWorkout extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get plannedWorkoutOrder => integer()();

  IntColumn get routineId => integer().references(Routine, #id)();
  IntColumn get workoutId => integer().references(Workout, #id)();
}

class WorkoutExercise extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get plannedExerciseOrder => integer()();

  IntColumn get workoutId => integer().references(Workout, #id)();
  IntColumn get exerciseId => integer().references(Exercise, #id)();
}
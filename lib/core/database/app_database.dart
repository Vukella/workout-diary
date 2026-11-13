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
  int get schemaVersion => 2;

  AppDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await _seedDevData();
    },
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(workout, workout.description);
      }
    },
  );

  Future<void> _seedDevData() async {
    // Muscles
    final chestId = await into(muscle).insert(MuscleCompanion(
      name: const Value('Chest'),
      muscleGroup: const Value('Push'),
    ));
    final tricepsId = await into(muscle).insert(MuscleCompanion(
      name: const Value('Triceps'),
      muscleGroup: const Value('Push'),
    ));
    final backId = await into(muscle).insert(MuscleCompanion(
      name: const Value('Back'),
      muscleGroup: const Value('Pull'),
    ));

    // Metrics
    final repsId = await into(metric).insert(MetricCompanion(
      name: const Value('Reps'),
      slug: const Value('reps'),
    ));
    final weightId = await into(metric).insert(MetricCompanion(
      name: const Value('Weight'),
      slug: const Value('weight_kg'),
    ));

    // Exercises
    final benchId = await into(exercise).insert(ExerciseCompanion(
      name: const Value('Bench Press'),
      description: const Value('Barbell flat bench press'),
    ));
    final rowId = await into(exercise).insert(ExerciseCompanion(
      name: const Value('Barbell Row'),
      description: const Value('Bent-over barbell row'),
    ));
    final squatId = await into(exercise).insert(ExerciseCompanion(
      name: const Value('Squat'),
      description: const Value('Barbell back squat'),
    ));

    // Exercise–Metric mappings
    for (final exId in [benchId, rowId, squatId]) {
      final emWeightId = await into(exerciseMetric).insert(ExerciseMetricCompanion(
        exerciseId: Value(exId),
        metricId: Value(weightId),
        metricOrder: const Value(1),
      ));
      await into(exerciseMetric).insert(ExerciseMetricCompanion(
        exerciseId: Value(exId),
        metricId: Value(repsId),
        metricOrder: const Value(2),
      ));
    }

    // Exercise–Muscle mappings
    await into(exerciseMuscle).insert(ExerciseMuscleCompanion(
      exerciseId: Value(benchId), muscleId: Value(chestId),
    ));
    await into(exerciseMuscle).insert(ExerciseMuscleCompanion(
      exerciseId: Value(benchId), muscleId: Value(tricepsId),
    ));
    await into(exerciseMuscle).insert(ExerciseMuscleCompanion(
      exerciseId: Value(rowId), muscleId: Value(backId),
    ));

    // Workout with exercises
    final workoutId = await into(workout).insert(WorkoutCompanion(
      name: const Value('Push Day'),
      description: const Value('Chest and triceps'),
    ));
    await into(workoutExercise).insert(WorkoutExerciseCompanion(
      workoutId: Value(workoutId),
      exerciseId: Value(benchId),
      plannedExerciseOrder: const Value(1),
    ));
  }
}
QueryExecutor _openConnection() {
  return driftDatabase(name: 'workout_diary');
}
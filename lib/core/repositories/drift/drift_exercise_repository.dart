import 'package:drift/drift.dart';
import 'package:workout_diary/core/database/app_database.dart';
import 'package:workout_diary/core/repositories/exercise_repository.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/features/exercise/data/metric.dart';
import 'package:workout_diary/features/exercise/data/muscle.dart';

import '../../../features/exercise/data/exercise_metric_entry.dart';

class DriftExerciseRepository implements ExerciseRepository{
  final AppDatabase _db;

  DriftExerciseRepository(this._db);

  Exercise _toExercise(ExerciseData row) =>
      Exercise(id: row.id, name: row.name);

  @override
  Stream<List<Exercise>> watchAll() {
    final query = _db.select(_db.exercise).join([
      leftOuterJoin(
        _db.exerciseMuscle,
        _db.exerciseMuscle.exerciseId.equalsExp(_db.exercise.id),
      ),
      leftOuterJoin(
        _db.muscle,
        _db.muscle.id.equalsExp(_db.exerciseMuscle.muscleId),
      ),
    ]);

    return query.watch().map((rows) {
      final exerciseDataMap = <int, ExerciseData>{};
      final musclesByExercise = <int, List<Muscle>>{};

      for (final row in rows) {
        final exerciseData = row.readTable(_db.exercise);
        final muscleData = row.readTableOrNull(_db.muscle);

        exerciseDataMap[exerciseData.id] = exerciseData;
        musclesByExercise.putIfAbsent(exerciseData.id, () => []);

        if (muscleData != null) {
          final muscle = Muscle(
            id: muscleData.id,
            name: muscleData.name,
            group: muscleData.muscleGroup ?? '',
          );
          if (!musclesByExercise[exerciseData.id]!.any((m) => m.id == muscleData.id)) {
            musclesByExercise[exerciseData.id]!.add(muscle);
          }
        }
      }

      return exerciseDataMap.entries.map((entry) {
        final data = entry.value;
        return Exercise(
          id: data.id,
          name: data.name,
          description: data.description,
          picture: data.picture,
          muscles: musclesByExercise[data.id] ?? [],
        );
      }).toList();
    });
  }

  @override
  Future<Exercise?> getById(int id) async{
    final query = _db.select(_db.exercise)..where((row) => row.id.equals(id));
    final row = await query.getSingleOrNull();
    return row == null ? null : _toExercise(row);
  }

  @override
  Future<void> save(Exercise exercise) async {
    await _db.transaction(() async {
      final rowId = await _db.into(_db.exercise).insertOnConflictUpdate(
        ExerciseCompanion(
          id: exercise.id == null ? const Value.absent() : Value(exercise.id!),
          name: Value(exercise.name),
          description: Value(exercise.description),
          picture: Value(exercise.picture),
        ),
      );
      final id = exercise.id ?? rowId;

      // Replace muscle associations
      await (_db.delete(_db.exerciseMuscle)
        ..where((row) => row.exerciseId.equals(id)))
          .go();
      for (final muscle in exercise.muscles) {
        await _db.into(_db.exerciseMuscle).insert(
          ExerciseMuscleCompanion(
            exerciseId: Value(id),
            muscleId: Value(muscle.id),
          ),
        );
      }

      // Replace metric associations
      await (_db.delete(_db.exerciseMetric)
        ..where((row) => row.exerciseId.equals(id)))
          .go();
      for (int i = 0; i < exercise.metrics.length; i++) {
        await _db.into(_db.exerciseMetric).insert(
          ExerciseMetricCompanion(
            exerciseId: Value(id),
            metricId: Value(exercise.metrics[i].metricId),
            metricOrder: Value(i),
          ),
        );
      }
    });
  }

  @override
  Future<void> delete(int id) {
    final query = _db.delete(_db.exercise)..where((row) => row.id.equals(id));
    return query.go();
  }

  @override
  Stream<List<Metric>> watchAllMetrics() {
    return _db.select(_db.metric).watch().map(
          (rows) => rows.map((row) => Metric(
        id: row.id,
        name: row.name,
        slug: row.slug,
      )).toList(),
    );
  }

  @override
  Stream<List<Muscle>> watchAllMuscles() {
    return _db.select(_db.muscle).watch().map(
          (rows) => rows.map((row) => Muscle(
        id: row.id,
        name: row.name,
        group: row.muscleGroup ?? '',
      )).toList(),
    );
  }

  @override
  Stream<Exercise?> watchById(int id) {
    final query = _db.select(_db.exercise).join([
      leftOuterJoin(_db.exerciseMuscle, _db.exerciseMuscle.exerciseId.equalsExp(_db.exercise.id)),
      leftOuterJoin(_db.muscle,         _db.muscle.id.equalsExp(_db.exerciseMuscle.muscleId)),
      leftOuterJoin(_db.exerciseMetric, _db.exerciseMetric.exerciseId.equalsExp(_db.exercise.id)),
      leftOuterJoin(_db.metric,         _db.metric.id.equalsExp(_db.exerciseMetric.metricId)),
    ])..where(_db.exercise.id.equals(id));

    return query.watch().map((rows) {
      if (rows.isEmpty) return null;

      ExerciseData? exerciseData;
      final muscles = <int, Muscle>{};
      final metrics = <int, ExerciseMetricEntry>{};

      for (final row in rows) {
        exerciseData ??= row.readTable(_db.exercise);

        final muscleData = row.readTableOrNull(_db.muscle);
        if (muscleData != null) {
          muscles[muscleData.id] = Muscle(
            id: muscleData.id,
            name: muscleData.name,
            group: muscleData.muscleGroup ?? '',
          );
        }

        final emData = row.readTableOrNull(_db.exerciseMetric);
        final mData  = row.readTableOrNull(_db.metric);
        if (emData != null && mData != null) {
          metrics[emData.id] = ExerciseMetricEntry(
            exerciseMetricId: emData.id,
            metricId: mData.id,
            metricName: mData.name,
            metricOrder: emData.metricOrder,
          );
        }
      }

      final data = exerciseData!;
      return Exercise(
        id: data.id,
        name: data.name,
        description: data.description,
        picture: data.picture,
        muscles: muscles.values.toList(),
        metrics: metrics.values.toList()
          ..sort((a, b) => a.metricOrder.compareTo(b.metricOrder)),
      );
    });
  }
}
import 'package:workout_diary/features/exercise/data/exercise.dart';

import '../../features/exercise/data/metric.dart';
import '../../features/exercise/data/muscle.dart';

abstract class ExerciseRepository {
  Stream<List<Exercise>> watchAll();
  Future<Exercise?> getById(int id);
  Future<void> save(Exercise exercise);
  Future<void> delete(int id);
  Stream<Exercise?> watchById(int id); // reactive — for detail screen
  Stream<List<Muscle>> watchAllMuscles();   // for filter chips + create form
  Stream<List<Metric>> watchAllMetrics();   // for create form metric picker
}
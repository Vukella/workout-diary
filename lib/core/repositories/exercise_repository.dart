import 'package:workout_diary/features/exercise/data/exercise.dart';

abstract class ExerciseRepository {
  Stream<List<Exercise>> watchAll();
  Future<Exercise?> getById(int id);
  Future<void> save(Exercise exercise);
  Future<void> delete(int id);
}
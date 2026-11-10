import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/providers/app_database_provider.dart';
import 'package:workout_diary/core/repositories/drift/drift_exercise_repository.dart';

import '../repositories/exercise_repository.dart';

part 'exercise_provider.g.dart';

@Riverpod(keepAlive: true)
ExerciseRepository exerciseProvider(Ref ref){
  final db = ref.watch(appDatabaseProviderProvider);
  return DriftExerciseRepository(db);
}
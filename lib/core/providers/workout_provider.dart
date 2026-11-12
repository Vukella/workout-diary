import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/providers/app_database_provider.dart';
import 'package:workout_diary/core/repositories/drift/drift_workout_repository.dart';

import '../repositories/workout_repository.dart';

part 'workout_provider.g.dart';

@Riverpod(keepAlive: true)
WorkoutRepository workoutRepository(Ref ref){
  final db = ref.watch(appDatabaseProvider);
  return DriftWorkoutRepository(db);
}
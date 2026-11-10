import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/providers/app_database_provider.dart';
import 'package:workout_diary/core/repositories/drift/drift_log_repository.dart';

import '../repositories/log_repository.dart';

part 'log_provider.g.dart';

@Riverpod(keepAlive: true)
LogRepository workoutLogProvider(Ref ref){
  final db = ref.watch(appDatabaseProviderProvider);
  return DriftLogRepository(db);
}
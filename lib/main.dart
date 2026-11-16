import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workout_diary/core/router/app_router.dart';
import 'package:workout_diary/core/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: WorkoutDiaryApp()));
}

class WorkoutDiaryApp extends ConsumerWidget {
  const WorkoutDiaryApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Workout Diary',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      routerConfig: router,
    );
  }
}
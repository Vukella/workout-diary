import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/features/exercise/providers/exercise_provider.dart';

class ExerciseDetailScreen extends ConsumerWidget {
  final int exerciseId;

  const ExerciseDetailScreen({super.key, required this.exerciseId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exerciseAsync = ref.watch(exerciseDetailProvider(exerciseId));

    return exerciseAsync.when(
      loading: () => Scaffold(appBar: AppBar(), body: const Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: const Text('Exercise')),
        body: Center(child: Text('Error: $e')),
      ),
      data: (exercise) {
        if (exercise == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('Exercise')),
            body: const Center(child: Text('Exercise not found.')),
          );
        }
        return _ExerciseDetail(exercise: exercise);
      },
    );
  }
}

class _ExerciseDetail extends StatelessWidget {
  final Exercise exercise;

  const _ExerciseDetail({required this.exercise});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(exercise.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Picture — placeholder until real image support is added
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.fitness_center,
                size: 64,
                color: colorScheme.onSurfaceVariant.withOpacity(0.35),
              ),
            ),
            const SizedBox(height: 20),

            // Description
            if (exercise.description != null && exercise.description!.isNotEmpty) ...[
              Text(
                exercise.description!,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 20),
            ],

            // Muscles
            if (exercise.muscles.isNotEmpty) ...[
              _SectionHeader('Muscles'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: exercise.muscles
                    .map((m) => Chip(label: Text(m.name)))
                    .toList(),
              ),
              const SizedBox(height: 20),
            ],

            // Metrics
            if (exercise.metrics.isNotEmpty) ...[
              _SectionHeader('Metrics'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: exercise.metrics
                    .map((m) => Chip(label: Text(m.metricName)))
                    .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        color: Theme.of(context).colorScheme.onSurfaceVariant,
        letterSpacing: 1.2,
      ),
    );
  }
}
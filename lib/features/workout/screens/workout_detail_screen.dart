import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_diary/core/providers/workout_provider.dart';
import 'package:workout_diary/core/theme/app_theme.dart';
import '../providers/workout_detail_provider.dart';

class WorkoutDetailScreen extends ConsumerWidget {
  final int workoutId;

  const WorkoutDetailScreen({super.key, required this.workoutId});

  Future<void> _confirmDelete(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete workout?'),
        content: const Text('This cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              'Delete',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      await ref.read(workoutRepositoryProvider).delete(workoutId);
      if (context.mounted) context.pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutAsync = ref.watch(workoutDetailProvider(workoutId));
    final exercisesAsync = ref.watch(workoutExercisesProvider(workoutId));

    return Scaffold(
      appBar: AppBar(
        title: Text(workoutAsync.value?.name ?? 'Workout'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: workoutAsync.value != null
                ? () => context.push(
              '/workouts/$workoutId/edit',
              extra: workoutAsync.value,
            )
                : null,
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () => _confirmDelete(context, ref),
          ),
        ],
      ),
      body: workoutAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (workout) {
          if (workout == null) {
            return const Center(child: Text('Workout not found'));
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (workout.description != null) ...[
                Text(
                  workout.description!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppTheme.onSurfaceMuted),
                ),
                const SizedBox(height: 24),
              ],
              Text(
                'Exercises',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppTheme.onSurfaceMuted,
                  letterSpacing: 0.8,
                ),
              ),
              const SizedBox(height: 12),
              exercisesAsync.when(
                loading: () => const CircularProgressIndicator(),
                error: (e, _) => Text('Error: $e'),
                data: (entries) => entries.isEmpty
                    ? Text(
                  'No exercises yet',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppTheme.onSurfaceMuted),
                )
                    : Column(
                  children: entries
                      .map((e) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: AppTheme.surfaceVariant,
                      child: Text(
                        '${e.plannedOrder}',
                        style: const TextStyle(
                            color: AppTheme.onSurface),
                      ),
                    ),
                    title: Text(e.exerciseName),
                  ))
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
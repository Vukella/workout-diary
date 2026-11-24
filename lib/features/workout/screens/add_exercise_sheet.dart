import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:workout_diary/core/providers/workout_provider.dart';
import 'package:workout_diary/features/exercise/providers/exercise_provider.dart';

class AddExerciseSheet extends ConsumerWidget {
  final int workoutId;

  const AddExerciseSheet({super.key, required this.workoutId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercisesAsync = ref.watch(exercisesProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      maxChildSize: 0.95,
      minChildSize: 0.4,
      expand: false,
      builder: (context, scrollController) => Column(
        children: [
          // Drag handle
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .onSurfaceVariant
                    .withOpacity(0.4),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Add Exercise',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: exercisesAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
              data: (exercises) => exercises.isEmpty
                  ? const Center(child: Text('No exercises in library yet.'))
                  : ListView.builder(
                controller: scrollController,
                itemCount: exercises.length,
                itemBuilder: (context, index) {
                  final exercise = exercises[index];
                  final subtitle = exercise.muscles.isEmpty
                      ? null
                      : exercise.muscles.map((m) => m.name).join(', ');
                  return ListTile(
                    title: Text(exercise.name),
                    subtitle: subtitle != null ? Text(subtitle) : null,
                    trailing: const Icon(Icons.add_circle_outline),
                    onTap: () => ref
                        .read(workoutRepositoryProvider)
                        .addExercise(workoutId, exercise.id!),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
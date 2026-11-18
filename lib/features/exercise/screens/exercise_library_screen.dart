import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/features/exercise/providers/exercise_provider.dart';

import '../../../core/theme/app_theme.dart';

class ExerciseLibraryScreen extends ConsumerStatefulWidget{
  const ExerciseLibraryScreen({super.key});

  @override
  ConsumerState<ExerciseLibraryScreen> createState() => _ExerciseLibraryScreenState();
}

class _ExerciseLibraryScreenState extends ConsumerState<ExerciseLibraryScreen>{
  @override
  Widget build(BuildContext context){
    final exercisesAsync = ref.watch(exercisesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.push('/exercises/create'),
          child: const Icon(Icons.add)),
      body: exercisesAsync.when(
          data: (exercises) => exercises.isEmpty
              ?_EmptyState()
              : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index)=>
                _ExerciseCard(exercise: exercises[index]),
              separatorBuilder: (_, _) => const SizedBox(height: 10),
              itemCount: exercises.length),
          error: (error, _) => Center(child: Text('Error: $error')),
          loading: () => const Center(child: CircularProgressIndicator(),)
      ),
    );
  }
}

class _ExerciseCard extends StatelessWidget{
  final Exercise exercise;
  const _ExerciseCard({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          exercise.name,
          style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.w600),
        ),
        subtitle: exercise.muscles.isEmpty
          ? null
          : Text(
              exercise.muscles.map((m) => m.name).join(', '),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppTheme.onSurfaceMuted),
        ),
        trailing: const Icon(Icons.chevron_right, color: AppTheme.onSurfaceMuted),
        onTap: () => context.push('/exercises/${exercise.id!}'),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.fitness_center, size: 64, color: AppTheme.onSurfaceMuted),
          const SizedBox(height: 16),
          Text(
            'No exercises yet',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: AppTheme.onSurfaceMuted),
          ),
          const SizedBox(height: 8),
          Text(
            'Tap + to create your first exercise',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppTheme.onSurfaceMuted),
          ),
        ],
      ),
    );
  }
}



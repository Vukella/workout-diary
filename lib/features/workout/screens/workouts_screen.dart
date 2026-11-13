import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_diary/core/theme/app_theme.dart';
import 'package:workout_diary/features/workout/providers/workouts_provider.dart';

import '../data/workout.dart';

class WorkoutsScreen extends ConsumerWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutsAsync = ref.watch(workoutsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Workouts'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.push('/workouts/create'),
          child: const Icon(Icons.add)),
      body: workoutsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
        data: (workouts) => workouts.isEmpty
            ? _EmptyState()
            : ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: workouts.length,
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, index) =>
              _WorkoutCard(workout: workouts[index]),
        ),
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
            'No workouts yet',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: AppTheme.onSurfaceMuted),
          ),
          const SizedBox(height: 8),
          Text(
            'Tap + to create your first workout',
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

class _WorkoutCard extends StatelessWidget {
  final Workout workout;

  const _WorkoutCard({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          workout.name,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        trailing: const Icon(Icons.chevron_right, color: AppTheme.onSurfaceMuted),
        onTap: () => context.push('/workouts/${workout.id!}'),
      ),
    );
  }
}
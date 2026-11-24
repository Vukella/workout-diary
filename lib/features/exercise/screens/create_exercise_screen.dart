import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:workout_diary/features/exercise/data/exercise.dart';
import 'package:workout_diary/features/exercise/providers/exercise_provider.dart';

import '../../../core/providers/exercise_provider.dart';
import '../data/exercise_metric_entry.dart';

class CreateExerciseScreen extends ConsumerStatefulWidget {
  const CreateExerciseScreen({super.key});

  @override
  ConsumerState<CreateExerciseScreen> createState() => _CreateExerciseScreenState();
}

class _CreateExerciseScreenState extends ConsumerState<CreateExerciseScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _selectedMuscleIds = <int>{};
  final _selectedMetricIds = <int>{};
  bool _saving = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _saving = true);

    final allMuscles = ref.read(musclesProvider).value ?? [];
    final allMetrics = ref.read(metricsProvider).value ?? [];

    final muscles = allMuscles
        .where((m) => _selectedMuscleIds.contains(m.id))
        .toList();

    final metrics = allMetrics
        .where((m) => _selectedMetricIds.contains(m.id))
        .toList()
        .asMap()
        .entries
        .map((e) => ExerciseMetricEntry(
      exerciseMetricId: 0, // placeholder — save() uses metricId + order, not this
      metricId: e.value.id,
      metricName: e.value.name,
      metricOrder: e.key,
    ))
        .toList();

    final exercise = Exercise(
      name: _nameController.text.trim(),
      description: _descriptionController.text.trim().isEmpty
          ? null
          : _descriptionController.text.trim(),
      muscles: muscles,
      metrics: metrics,
    );

    await ref.read(exerciseRepositoryProvider).save(exercise);
    if (mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final musclesAsync = ref.watch(musclesProvider);
    final metricsAsync = ref.watch(metricsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('New Exercise')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                textCapitalization: TextCapitalization.words,
                validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Name is required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description (optional)'),
                maxLines: 3,
              ),
              const SizedBox(height: 24),

              _SectionHeader('Muscles'),
              const SizedBox(height: 8),
              musclesAsync.when(
                loading: () => const CircularProgressIndicator(),
                error: (e, _) => Text('Error: $e'),
                data: (muscles) => Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: muscles
                      .map((m) => FilterChip(
                    label: Text(m.name),
                    selected: _selectedMuscleIds.contains(m.id),
                    onSelected: (on) => setState(() =>
                    on ? _selectedMuscleIds.add(m.id)
                        : _selectedMuscleIds.remove(m.id)),
                  ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 24),

              _SectionHeader('Metrics'),
              const SizedBox(height: 8),
              metricsAsync.when(
                loading: () => const CircularProgressIndicator(),
                error: (e, _) => Text('Error: $e'),
                data: (metrics) => Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: metrics
                      .map((m) => FilterChip(
                    label: Text(m.name),
                    selected: _selectedMetricIds.contains(m.id),
                    onSelected: (on) => setState(() =>
                    on ? _selectedMetricIds.add(m.id)
                        : _selectedMetricIds.remove(m.id)),
                  ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _saving ? null : _save,
                  child: _saving
                      ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                      : const Text('Save Exercise'),
                ),
              ),
            ],
          ),
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
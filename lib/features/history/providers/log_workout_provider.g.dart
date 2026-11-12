// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_workout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(workoutsLog)
final workoutsLogProvider = WorkoutsLogProvider._();

final class WorkoutsLogProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<WorkoutLog>>,
          List<WorkoutLog>,
          Stream<List<WorkoutLog>>
        >
    with $FutureModifier<List<WorkoutLog>>, $StreamProvider<List<WorkoutLog>> {
  WorkoutsLogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'workoutsLogProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$workoutsLogHash();

  @$internal
  @override
  $StreamProviderElement<List<WorkoutLog>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<WorkoutLog>> create(Ref ref) {
    return workoutsLog(ref);
  }
}

String _$workoutsLogHash() => r'8b8a368b1ff198cc2020792c58b916483205653a';

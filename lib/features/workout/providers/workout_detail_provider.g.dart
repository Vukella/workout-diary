// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(workoutDetail)
final workoutDetailProvider = WorkoutDetailFamily._();

final class WorkoutDetailProvider
    extends
        $FunctionalProvider<AsyncValue<Workout?>, Workout?, Stream<Workout?>>
    with $FutureModifier<Workout?>, $StreamProvider<Workout?> {
  WorkoutDetailProvider._({
    required WorkoutDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'workoutDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$workoutDetailHash();

  @override
  String toString() {
    return r'workoutDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Workout?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Workout?> create(Ref ref) {
    final argument = this.argument as int;
    return workoutDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$workoutDetailHash() => r'5a340c702666055168591c3ed63bdb8faceb0ff0';

final class WorkoutDetailFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Workout?>, int> {
  WorkoutDetailFamily._()
    : super(
        retry: null,
        name: r'workoutDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WorkoutDetailProvider call(int id) =>
      WorkoutDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'workoutDetailProvider';
}

@ProviderFor(workoutExercises)
final workoutExercisesProvider = WorkoutExercisesFamily._();

final class WorkoutExercisesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<WorkoutExerciseEntry>>,
          List<WorkoutExerciseEntry>,
          Stream<List<WorkoutExerciseEntry>>
        >
    with
        $FutureModifier<List<WorkoutExerciseEntry>>,
        $StreamProvider<List<WorkoutExerciseEntry>> {
  WorkoutExercisesProvider._({
    required WorkoutExercisesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'workoutExercisesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$workoutExercisesHash();

  @override
  String toString() {
    return r'workoutExercisesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<WorkoutExerciseEntry>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<WorkoutExerciseEntry>> create(Ref ref) {
    final argument = this.argument as int;
    return workoutExercises(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkoutExercisesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$workoutExercisesHash() => r'6c2b70a473f0dc8b0132a67f3c29d44498617f0b';

final class WorkoutExercisesFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<WorkoutExerciseEntry>>, int> {
  WorkoutExercisesFamily._()
    : super(
        retry: null,
        name: r'workoutExercisesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WorkoutExercisesProvider call(int workoutId) =>
      WorkoutExercisesProvider._(argument: workoutId, from: this);

  @override
  String toString() => r'workoutExercisesProvider';
}

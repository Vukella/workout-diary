// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(exercises)
final exercisesProvider = ExercisesProvider._();

final class ExercisesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Exercise>>,
          List<Exercise>,
          Stream<List<Exercise>>
        >
    with $FutureModifier<List<Exercise>>, $StreamProvider<List<Exercise>> {
  ExercisesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'exercisesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$exercisesHash();

  @$internal
  @override
  $StreamProviderElement<List<Exercise>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Exercise>> create(Ref ref) {
    return exercises(ref);
  }
}

String _$exercisesHash() => r'f64a72f014ca3bef4a6b41b00cc88d135da9aef4';

@ProviderFor(muscles)
final musclesProvider = MusclesProvider._();

final class MusclesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Muscle>>,
          List<Muscle>,
          Stream<List<Muscle>>
        >
    with $FutureModifier<List<Muscle>>, $StreamProvider<List<Muscle>> {
  MusclesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'musclesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$musclesHash();

  @$internal
  @override
  $StreamProviderElement<List<Muscle>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Muscle>> create(Ref ref) {
    return muscles(ref);
  }
}

String _$musclesHash() => r'479791ab7f106b921e9fd024b6f80b8f11bfdd32';

@ProviderFor(metrics)
final metricsProvider = MetricsProvider._();

final class MetricsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Metric>>,
          List<Metric>,
          Stream<List<Metric>>
        >
    with $FutureModifier<List<Metric>>, $StreamProvider<List<Metric>> {
  MetricsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'metricsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$metricsHash();

  @$internal
  @override
  $StreamProviderElement<List<Metric>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Metric>> create(Ref ref) {
    return metrics(ref);
  }
}

String _$metricsHash() => r'6fe3a86a0db755ec5e617d0f6d20f6343cec88aa';

@ProviderFor(exerciseDetail)
final exerciseDetailProvider = ExerciseDetailFamily._();

final class ExerciseDetailProvider
    extends
        $FunctionalProvider<AsyncValue<Exercise?>, Exercise?, Stream<Exercise?>>
    with $FutureModifier<Exercise?>, $StreamProvider<Exercise?> {
  ExerciseDetailProvider._({
    required ExerciseDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'exerciseDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$exerciseDetailHash();

  @override
  String toString() {
    return r'exerciseDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Exercise?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Exercise?> create(Ref ref) {
    final argument = this.argument as int;
    return exerciseDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ExerciseDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$exerciseDetailHash() => r'bb8dc71d45f2b9a2435924994a8f9953f5ac913e';

final class ExerciseDetailFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Exercise?>, int> {
  ExerciseDetailFamily._()
    : super(
        retry: null,
        name: r'exerciseDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ExerciseDetailProvider call(int id) =>
      ExerciseDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'exerciseDetailProvider';
}

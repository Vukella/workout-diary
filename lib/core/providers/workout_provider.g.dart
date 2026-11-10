// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(workoutProvider)
final workoutProviderProvider = WorkoutProviderProvider._();

final class WorkoutProviderProvider
    extends
        $FunctionalProvider<
          WorkoutRepository,
          WorkoutRepository,
          WorkoutRepository
        >
    with $Provider<WorkoutRepository> {
  WorkoutProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'workoutProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$workoutProviderHash();

  @$internal
  @override
  $ProviderElement<WorkoutRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WorkoutRepository create(Ref ref) {
    return workoutProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WorkoutRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WorkoutRepository>(value),
    );
  }
}

String _$workoutProviderHash() => r'e7c13f4164884599f141834bf4952e58a0276e2c';

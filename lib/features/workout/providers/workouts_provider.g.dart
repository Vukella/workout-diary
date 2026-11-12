// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(workouts)
final workoutsProvider = WorkoutsProvider._();

final class WorkoutsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Workout>>,
          List<Workout>,
          Stream<List<Workout>>
        >
    with $FutureModifier<List<Workout>>, $StreamProvider<List<Workout>> {
  WorkoutsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'workoutsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$workoutsHash();

  @$internal
  @override
  $StreamProviderElement<List<Workout>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Workout>> create(Ref ref) {
    return workouts(ref);
  }
}

String _$workoutsHash() => r'b91c00c2fc28de59b13038eb4e699a073b8c7379';

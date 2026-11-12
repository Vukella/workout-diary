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

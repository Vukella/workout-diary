// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(workoutLogProvider)
final workoutLogProviderProvider = WorkoutLogProviderProvider._();

final class WorkoutLogProviderProvider
    extends $FunctionalProvider<LogRepository, LogRepository, LogRepository>
    with $Provider<LogRepository> {
  WorkoutLogProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'workoutLogProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$workoutLogProviderHash();

  @$internal
  @override
  $ProviderElement<LogRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogRepository create(Ref ref) {
    return workoutLogProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogRepository>(value),
    );
  }
}

String _$workoutLogProviderHash() =>
    r'3b68a7dffb8110a9b491c8d0fdeae5150da0f84f';

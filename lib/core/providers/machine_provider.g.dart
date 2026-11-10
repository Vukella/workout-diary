// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(machineProvider)
final machineProviderProvider = MachineProviderProvider._();

final class MachineProviderProvider
    extends
        $FunctionalProvider<
          MachineRepository,
          MachineRepository,
          MachineRepository
        >
    with $Provider<MachineRepository> {
  MachineProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'machineProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$machineProviderHash();

  @$internal
  @override
  $ProviderElement<MachineRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MachineRepository create(Ref ref) {
    return machineProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MachineRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MachineRepository>(value),
    );
  }
}

String _$machineProviderHash() => r'e248442cd9855b958b48333d3db90f92baa182cd';

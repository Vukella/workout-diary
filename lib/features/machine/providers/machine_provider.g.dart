// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(machines)
final machinesProvider = MachinesProvider._();

final class MachinesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Machine>>,
          List<Machine>,
          Stream<List<Machine>>
        >
    with $FutureModifier<List<Machine>>, $StreamProvider<List<Machine>> {
  MachinesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'machinesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$machinesHash();

  @$internal
  @override
  $StreamProviderElement<List<Machine>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Machine>> create(Ref ref) {
    return machines(ref);
  }
}

String _$machinesHash() => r'aa7d4be2296577f6760adf728a9f3586b5bda94f';

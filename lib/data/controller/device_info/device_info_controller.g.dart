// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deviceInfoControllerHash() =>
    r'aa2a655c6b58a7ad078acdb6d7e3083526f90857';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DeviceInfoController
    extends BuildlessAutoDisposeNotifier<DeviceInfoState> {
  late final DeviceInfoState initialState;

  DeviceInfoState build({
    DeviceInfoState initialState = const DeviceInfoState.idle(),
  });
}

/// See also [DeviceInfoController].
@ProviderFor(DeviceInfoController)
const deviceInfoControllerProvider = DeviceInfoControllerFamily();

/// See also [DeviceInfoController].
class DeviceInfoControllerFamily extends Family<DeviceInfoState> {
  /// See also [DeviceInfoController].
  const DeviceInfoControllerFamily();

  /// See also [DeviceInfoController].
  DeviceInfoControllerProvider call({
    DeviceInfoState initialState = const DeviceInfoState.idle(),
  }) {
    return DeviceInfoControllerProvider(
      initialState: initialState,
    );
  }

  @override
  DeviceInfoControllerProvider getProviderOverride(
    covariant DeviceInfoControllerProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    deviceInfoRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    deviceInfoRepositoryProvider,
    ...?deviceInfoRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deviceInfoControllerProvider';
}

/// See also [DeviceInfoController].
class DeviceInfoControllerProvider extends AutoDisposeNotifierProviderImpl<
    DeviceInfoController, DeviceInfoState> {
  /// See also [DeviceInfoController].
  DeviceInfoControllerProvider({
    DeviceInfoState initialState = const DeviceInfoState.idle(),
  }) : this._internal(
          () => DeviceInfoController()..initialState = initialState,
          from: deviceInfoControllerProvider,
          name: r'deviceInfoControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deviceInfoControllerHash,
          dependencies: DeviceInfoControllerFamily._dependencies,
          allTransitiveDependencies:
              DeviceInfoControllerFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  DeviceInfoControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final DeviceInfoState initialState;

  @override
  DeviceInfoState runNotifierBuild(
    covariant DeviceInfoController notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(DeviceInfoController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeviceInfoControllerProvider._internal(
        () => create()..initialState = initialState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialState: initialState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DeviceInfoController, DeviceInfoState>
      createElement() {
    return _DeviceInfoControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceInfoControllerProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeviceInfoControllerRef
    on AutoDisposeNotifierProviderRef<DeviceInfoState> {
  /// The parameter `initialState` of this provider.
  DeviceInfoState get initialState;
}

class _DeviceInfoControllerProviderElement
    extends AutoDisposeNotifierProviderElement<DeviceInfoController,
        DeviceInfoState> with DeviceInfoControllerRef {
  _DeviceInfoControllerProviderElement(super.provider);

  @override
  DeviceInfoState get initialState =>
      (origin as DeviceInfoControllerProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

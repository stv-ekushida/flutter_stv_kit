// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_basic_state_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$widgetBasicStateControllerHash() =>
    r'223b090de38e716738513e94413c77f71ab6b42d';

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

abstract class _$WidgetBasicStateController
    extends BuildlessAutoDisposeNotifier<WidgetBasicState> {
  late final WidgetBasicState initialState;

  WidgetBasicState build({
    WidgetBasicState initialState = const WidgetBasicState.none(),
  });
}

/// See also [WidgetBasicStateController].
@ProviderFor(WidgetBasicStateController)
const widgetBasicStateControllerProvider = WidgetBasicStateControllerFamily();

/// See also [WidgetBasicStateController].
class WidgetBasicStateControllerFamily extends Family<WidgetBasicState> {
  /// See also [WidgetBasicStateController].
  const WidgetBasicStateControllerFamily();

  /// See also [WidgetBasicStateController].
  WidgetBasicStateControllerProvider call({
    WidgetBasicState initialState = const WidgetBasicState.none(),
  }) {
    return WidgetBasicStateControllerProvider(
      initialState: initialState,
    );
  }

  @override
  WidgetBasicStateControllerProvider getProviderOverride(
    covariant WidgetBasicStateControllerProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies =
      const <ProviderOrFamily>[];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      const <ProviderOrFamily>{};

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'widgetBasicStateControllerProvider';
}

/// See also [WidgetBasicStateController].
class WidgetBasicStateControllerProvider
    extends AutoDisposeNotifierProviderImpl<WidgetBasicStateController,
        WidgetBasicState> {
  /// See also [WidgetBasicStateController].
  WidgetBasicStateControllerProvider({
    WidgetBasicState initialState = const WidgetBasicState.none(),
  }) : this._internal(
          () => WidgetBasicStateController()..initialState = initialState,
          from: widgetBasicStateControllerProvider,
          name: r'widgetBasicStateControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$widgetBasicStateControllerHash,
          dependencies: WidgetBasicStateControllerFamily._dependencies,
          allTransitiveDependencies:
              WidgetBasicStateControllerFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  WidgetBasicStateControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final WidgetBasicState initialState;

  @override
  WidgetBasicState runNotifierBuild(
    covariant WidgetBasicStateController notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(WidgetBasicStateController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WidgetBasicStateControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<WidgetBasicStateController,
      WidgetBasicState> createElement() {
    return _WidgetBasicStateControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetBasicStateControllerProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WidgetBasicStateControllerRef
    on AutoDisposeNotifierProviderRef<WidgetBasicState> {
  /// The parameter `initialState` of this provider.
  WidgetBasicState get initialState;
}

class _WidgetBasicStateControllerProviderElement
    extends AutoDisposeNotifierProviderElement<WidgetBasicStateController,
        WidgetBasicState> with WidgetBasicStateControllerRef {
  _WidgetBasicStateControllerProviderElement(super.provider);

  @override
  WidgetBasicState get initialState =>
      (origin as WidgetBasicStateControllerProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

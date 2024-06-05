// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$passwordResetScreenViewModelHash() =>
    r'3322267be0ac2ddefc91e419c8aa98fdd8270bc5';

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

abstract class _$PasswordResetScreenViewModel
    extends BuildlessAutoDisposeNotifier<PasswordResetScreenState> {
  late final PasswordResetScreenState initialState;

  PasswordResetScreenState build({
    PasswordResetScreenState initialState =
        const PasswordResetScreenState(isSuccess: false, isLoading: false),
  });
}

/// See also [PasswordResetScreenViewModel].
@ProviderFor(PasswordResetScreenViewModel)
const passwordResetScreenViewModelProvider =
    PasswordResetScreenViewModelFamily();

/// See also [PasswordResetScreenViewModel].
class PasswordResetScreenViewModelFamily
    extends Family<PasswordResetScreenState> {
  /// See also [PasswordResetScreenViewModel].
  const PasswordResetScreenViewModelFamily();

  /// See also [PasswordResetScreenViewModel].
  PasswordResetScreenViewModelProvider call({
    PasswordResetScreenState initialState =
        const PasswordResetScreenState(isSuccess: false, isLoading: false),
  }) {
    return PasswordResetScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  PasswordResetScreenViewModelProvider getProviderOverride(
    covariant PasswordResetScreenViewModelProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    authRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    authRepositoryProvider,
    ...?authRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'passwordResetScreenViewModelProvider';
}

/// See also [PasswordResetScreenViewModel].
class PasswordResetScreenViewModelProvider
    extends AutoDisposeNotifierProviderImpl<PasswordResetScreenViewModel,
        PasswordResetScreenState> {
  /// See also [PasswordResetScreenViewModel].
  PasswordResetScreenViewModelProvider({
    PasswordResetScreenState initialState =
        const PasswordResetScreenState(isSuccess: false, isLoading: false),
  }) : this._internal(
          () => PasswordResetScreenViewModel()..initialState = initialState,
          from: passwordResetScreenViewModelProvider,
          name: r'passwordResetScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$passwordResetScreenViewModelHash,
          dependencies: PasswordResetScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              PasswordResetScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  PasswordResetScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final PasswordResetScreenState initialState;

  @override
  PasswordResetScreenState runNotifierBuild(
    covariant PasswordResetScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(PasswordResetScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: PasswordResetScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<PasswordResetScreenViewModel,
      PasswordResetScreenState> createElement() {
    return _PasswordResetScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PasswordResetScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PasswordResetScreenViewModelRef
    on AutoDisposeNotifierProviderRef<PasswordResetScreenState> {
  /// The parameter `initialState` of this provider.
  PasswordResetScreenState get initialState;
}

class _PasswordResetScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<PasswordResetScreenViewModel,
        PasswordResetScreenState> with PasswordResetScreenViewModelRef {
  _PasswordResetScreenViewModelProviderElement(super.provider);

  @override
  PasswordResetScreenState get initialState =>
      (origin as PasswordResetScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authControllerHash() => r'7e455b9a1a55c7bc1a92fe47992e582de952f30a';

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

abstract class _$AuthController
    extends BuildlessAutoDisposeNotifier<AuthState> {
  late final AuthState initialState;

  AuthState build({
    AuthState initialState = const AuthState.idle(),
  });
}

/// See also [AuthController].
@ProviderFor(AuthController)
const authControllerProvider = AuthControllerFamily();

/// See also [AuthController].
class AuthControllerFamily extends Family<AuthState> {
  /// See also [AuthController].
  const AuthControllerFamily();

  /// See also [AuthController].
  AuthControllerProvider call({
    AuthState initialState = const AuthState.idle(),
  }) {
    return AuthControllerProvider(
      initialState: initialState,
    );
  }

  @override
  AuthControllerProvider getProviderOverride(
    covariant AuthControllerProvider provider,
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
  String? get name => r'authControllerProvider';
}

/// See also [AuthController].
class AuthControllerProvider
    extends AutoDisposeNotifierProviderImpl<AuthController, AuthState> {
  /// See also [AuthController].
  AuthControllerProvider({
    AuthState initialState = const AuthState.idle(),
  }) : this._internal(
          () => AuthController()..initialState = initialState,
          from: authControllerProvider,
          name: r'authControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authControllerHash,
          dependencies: AuthControllerFamily._dependencies,
          allTransitiveDependencies:
              AuthControllerFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  AuthControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final AuthState initialState;

  @override
  AuthState runNotifierBuild(
    covariant AuthController notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(AuthController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AuthControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<AuthController, AuthState>
      createElement() {
    return _AuthControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthControllerProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthControllerRef on AutoDisposeNotifierProviderRef<AuthState> {
  /// The parameter `initialState` of this provider.
  AuthState get initialState;
}

class _AuthControllerProviderElement
    extends AutoDisposeNotifierProviderElement<AuthController, AuthState>
    with AuthControllerRef {
  _AuthControllerProviderElement(super.provider);

  @override
  AuthState get initialState => (origin as AuthControllerProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

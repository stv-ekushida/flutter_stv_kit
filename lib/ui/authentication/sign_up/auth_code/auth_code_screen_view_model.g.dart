// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_code_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authCodeScreenViewModelHash() =>
    r'ac9227eaacd844a7981fbea44b8133effd2e9c0f';

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

abstract class _$AuthCodeScreenViewModel
    extends BuildlessAutoDisposeNotifier<AuthCodeScreenState> {
  late final AuthCodeScreenState initialState;

  AuthCodeScreenState build({
    AuthCodeScreenState initialState = const AuthCodeScreenState.none(),
  });
}

/// See also [AuthCodeScreenViewModel].
@ProviderFor(AuthCodeScreenViewModel)
const authCodeScreenViewModelProvider = AuthCodeScreenViewModelFamily();

/// See also [AuthCodeScreenViewModel].
class AuthCodeScreenViewModelFamily extends Family<AuthCodeScreenState> {
  /// See also [AuthCodeScreenViewModel].
  const AuthCodeScreenViewModelFamily();

  /// See also [AuthCodeScreenViewModel].
  AuthCodeScreenViewModelProvider call({
    AuthCodeScreenState initialState = const AuthCodeScreenState.none(),
  }) {
    return AuthCodeScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  AuthCodeScreenViewModelProvider getProviderOverride(
    covariant AuthCodeScreenViewModelProvider provider,
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
  String? get name => r'authCodeScreenViewModelProvider';
}

/// See also [AuthCodeScreenViewModel].
class AuthCodeScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    AuthCodeScreenViewModel, AuthCodeScreenState> {
  /// See also [AuthCodeScreenViewModel].
  AuthCodeScreenViewModelProvider({
    AuthCodeScreenState initialState = const AuthCodeScreenState.none(),
  }) : this._internal(
          () => AuthCodeScreenViewModel()..initialState = initialState,
          from: authCodeScreenViewModelProvider,
          name: r'authCodeScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authCodeScreenViewModelHash,
          dependencies: AuthCodeScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              AuthCodeScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  AuthCodeScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final AuthCodeScreenState initialState;

  @override
  AuthCodeScreenState runNotifierBuild(
    covariant AuthCodeScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(AuthCodeScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: AuthCodeScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<AuthCodeScreenViewModel,
      AuthCodeScreenState> createElement() {
    return _AuthCodeScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthCodeScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthCodeScreenViewModelRef
    on AutoDisposeNotifierProviderRef<AuthCodeScreenState> {
  /// The parameter `initialState` of this provider.
  AuthCodeScreenState get initialState;
}

class _AuthCodeScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<AuthCodeScreenViewModel,
        AuthCodeScreenState> with AuthCodeScreenViewModelRef {
  _AuthCodeScreenViewModelProviderElement(super.provider);

  @override
  AuthCodeScreenState get initialState =>
      (origin as AuthCodeScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginScreenViewModelHash() =>
    r'e9c52d547815e72328b75c4421fbb27b66fe1fe5';

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

abstract class _$LoginScreenViewModel
    extends BuildlessAutoDisposeNotifier<LoginScreenState> {
  late final LoginScreenState initialState;

  LoginScreenState build({
    LoginScreenState initialState = const LoginScreenState.none(),
  });
}

/// See also [LoginScreenViewModel].
@ProviderFor(LoginScreenViewModel)
const loginScreenViewModelProvider = LoginScreenViewModelFamily();

/// See also [LoginScreenViewModel].
class LoginScreenViewModelFamily extends Family<LoginScreenState> {
  /// See also [LoginScreenViewModel].
  const LoginScreenViewModelFamily();

  /// See also [LoginScreenViewModel].
  LoginScreenViewModelProvider call({
    LoginScreenState initialState = const LoginScreenState.none(),
  }) {
    return LoginScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  LoginScreenViewModelProvider getProviderOverride(
    covariant LoginScreenViewModelProvider provider,
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
  String? get name => r'loginScreenViewModelProvider';
}

/// See also [LoginScreenViewModel].
class LoginScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    LoginScreenViewModel, LoginScreenState> {
  /// See also [LoginScreenViewModel].
  LoginScreenViewModelProvider({
    LoginScreenState initialState = const LoginScreenState.none(),
  }) : this._internal(
          () => LoginScreenViewModel()..initialState = initialState,
          from: loginScreenViewModelProvider,
          name: r'loginScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginScreenViewModelHash,
          dependencies: LoginScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              LoginScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  LoginScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final LoginScreenState initialState;

  @override
  LoginScreenState runNotifierBuild(
    covariant LoginScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(LoginScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: LoginScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<LoginScreenViewModel, LoginScreenState>
      createElement() {
    return _LoginScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginScreenViewModelRef
    on AutoDisposeNotifierProviderRef<LoginScreenState> {
  /// The parameter `initialState` of this provider.
  LoginScreenState get initialState;
}

class _LoginScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<LoginScreenViewModel,
        LoginScreenState> with LoginScreenViewModelRef {
  _LoginScreenViewModelProviderElement(super.provider);

  @override
  LoginScreenState get initialState =>
      (origin as LoginScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

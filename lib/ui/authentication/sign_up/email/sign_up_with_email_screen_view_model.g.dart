// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_with_email_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpWithEmailScreenViewModelHash() =>
    r'd567ab96416643bc2c1fd147455e8ca8bce0ff6f';

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

abstract class _$SignUpWithEmailScreenViewModel
    extends BuildlessAutoDisposeNotifier<SignUpWithEmailScreenState> {
  late final SignUpWithEmailScreenState initialState;

  SignUpWithEmailScreenState build({
    SignUpWithEmailScreenState initialState =
        const SignUpWithEmailScreenState.none(),
  });
}

/// See also [SignUpWithEmailScreenViewModel].
@ProviderFor(SignUpWithEmailScreenViewModel)
const signUpWithEmailScreenViewModelProvider =
    SignUpWithEmailScreenViewModelFamily();

/// See also [SignUpWithEmailScreenViewModel].
class SignUpWithEmailScreenViewModelFamily
    extends Family<SignUpWithEmailScreenState> {
  /// See also [SignUpWithEmailScreenViewModel].
  const SignUpWithEmailScreenViewModelFamily();

  /// See also [SignUpWithEmailScreenViewModel].
  SignUpWithEmailScreenViewModelProvider call({
    SignUpWithEmailScreenState initialState =
        const SignUpWithEmailScreenState.none(),
  }) {
    return SignUpWithEmailScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  SignUpWithEmailScreenViewModelProvider getProviderOverride(
    covariant SignUpWithEmailScreenViewModelProvider provider,
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
  String? get name => r'signUpWithEmailScreenViewModelProvider';
}

/// See also [SignUpWithEmailScreenViewModel].
class SignUpWithEmailScreenViewModelProvider
    extends AutoDisposeNotifierProviderImpl<SignUpWithEmailScreenViewModel,
        SignUpWithEmailScreenState> {
  /// See also [SignUpWithEmailScreenViewModel].
  SignUpWithEmailScreenViewModelProvider({
    SignUpWithEmailScreenState initialState =
        const SignUpWithEmailScreenState.none(),
  }) : this._internal(
          () => SignUpWithEmailScreenViewModel()..initialState = initialState,
          from: signUpWithEmailScreenViewModelProvider,
          name: r'signUpWithEmailScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signUpWithEmailScreenViewModelHash,
          dependencies: SignUpWithEmailScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              SignUpWithEmailScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  SignUpWithEmailScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final SignUpWithEmailScreenState initialState;

  @override
  SignUpWithEmailScreenState runNotifierBuild(
    covariant SignUpWithEmailScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(SignUpWithEmailScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SignUpWithEmailScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<SignUpWithEmailScreenViewModel,
      SignUpWithEmailScreenState> createElement() {
    return _SignUpWithEmailScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignUpWithEmailScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SignUpWithEmailScreenViewModelRef
    on AutoDisposeNotifierProviderRef<SignUpWithEmailScreenState> {
  /// The parameter `initialState` of this provider.
  SignUpWithEmailScreenState get initialState;
}

class _SignUpWithEmailScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<SignUpWithEmailScreenViewModel,
        SignUpWithEmailScreenState> with SignUpWithEmailScreenViewModelRef {
  _SignUpWithEmailScreenViewModelProviderElement(super.provider);

  @override
  SignUpWithEmailScreenState get initialState =>
      (origin as SignUpWithEmailScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpScreenViewModelHash() =>
    r'6946035e25cf47f838c9f1cbfdf0879586db8904';

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

abstract class _$SignUpScreenViewModel
    extends BuildlessAutoDisposeNotifier<SignUpScreenState> {
  late final SignUpScreenState initialState;

  SignUpScreenState build({
    SignUpScreenState initialState = const SignUpScreenState.none(),
  });
}

/// See also [SignUpScreenViewModel].
@ProviderFor(SignUpScreenViewModel)
const signUpScreenViewModelProvider = SignUpScreenViewModelFamily();

/// See also [SignUpScreenViewModel].
class SignUpScreenViewModelFamily extends Family<SignUpScreenState> {
  /// See also [SignUpScreenViewModel].
  const SignUpScreenViewModelFamily();

  /// See also [SignUpScreenViewModel].
  SignUpScreenViewModelProvider call({
    SignUpScreenState initialState = const SignUpScreenState.none(),
  }) {
    return SignUpScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  SignUpScreenViewModelProvider getProviderOverride(
    covariant SignUpScreenViewModelProvider provider,
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
  String? get name => r'signUpScreenViewModelProvider';
}

/// See also [SignUpScreenViewModel].
class SignUpScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    SignUpScreenViewModel, SignUpScreenState> {
  /// See also [SignUpScreenViewModel].
  SignUpScreenViewModelProvider({
    SignUpScreenState initialState = const SignUpScreenState.none(),
  }) : this._internal(
          () => SignUpScreenViewModel()..initialState = initialState,
          from: signUpScreenViewModelProvider,
          name: r'signUpScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signUpScreenViewModelHash,
          dependencies: SignUpScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              SignUpScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  SignUpScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final SignUpScreenState initialState;

  @override
  SignUpScreenState runNotifierBuild(
    covariant SignUpScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(SignUpScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SignUpScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<SignUpScreenViewModel, SignUpScreenState>
      createElement() {
    return _SignUpScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignUpScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SignUpScreenViewModelRef
    on AutoDisposeNotifierProviderRef<SignUpScreenState> {
  /// The parameter `initialState` of this provider.
  SignUpScreenState get initialState;
}

class _SignUpScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<SignUpScreenViewModel,
        SignUpScreenState> with SignUpScreenViewModelRef {
  _SignUpScreenViewModelProviderElement(super.provider);

  @override
  SignUpScreenState get initialState =>
      (origin as SignUpScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

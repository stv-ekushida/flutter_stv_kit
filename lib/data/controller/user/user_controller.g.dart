// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userControllerHash() => r'725ae8afa0c7b2b8f87d011d3a6b08179f6d2a70';

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

abstract class _$UserController
    extends BuildlessAutoDisposeNotifier<UserState> {
  late final UserState initialState;

  UserState build({
    UserState initialState = const UserState.idle(),
  });
}

/// See also [UserController].
@ProviderFor(UserController)
const userControllerProvider = UserControllerFamily();

/// See also [UserController].
class UserControllerFamily extends Family<UserState> {
  /// See also [UserController].
  const UserControllerFamily();

  /// See also [UserController].
  UserControllerProvider call({
    UserState initialState = const UserState.idle(),
  }) {
    return UserControllerProvider(
      initialState: initialState,
    );
  }

  @override
  UserControllerProvider getProviderOverride(
    covariant UserControllerProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    userRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    userRepositoryProvider,
    ...?userRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userControllerProvider';
}

/// See also [UserController].
class UserControllerProvider
    extends AutoDisposeNotifierProviderImpl<UserController, UserState> {
  /// See also [UserController].
  UserControllerProvider({
    UserState initialState = const UserState.idle(),
  }) : this._internal(
          () => UserController()..initialState = initialState,
          from: userControllerProvider,
          name: r'userControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userControllerHash,
          dependencies: UserControllerFamily._dependencies,
          allTransitiveDependencies:
              UserControllerFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  UserControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final UserState initialState;

  @override
  UserState runNotifierBuild(
    covariant UserController notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(UserController Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<UserController, UserState>
      createElement() {
    return _UserControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserControllerProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserControllerRef on AutoDisposeNotifierProviderRef<UserState> {
  /// The parameter `initialState` of this provider.
  UserState get initialState;
}

class _UserControllerProviderElement
    extends AutoDisposeNotifierProviderElement<UserController, UserState>
    with UserControllerRef {
  _UserControllerProviderElement(super.provider);

  @override
  UserState get initialState => (origin as UserControllerProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

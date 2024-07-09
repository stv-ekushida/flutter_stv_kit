// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_settings_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userNotificationSettingsControllerHash() =>
    r'e5015b2f303bfd356f9a1b73baca254a741588cf';

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

abstract class _$UserNotificationSettingsController
    extends BuildlessAutoDisposeNotifier<UserNotificationSettingsState> {
  late final UserNotificationSettingsState initialState;

  UserNotificationSettingsState build({
    UserNotificationSettingsState initialState =
        const UserNotificationSettingsState.idle(),
  });
}

/// See also [UserNotificationSettingsController].
@ProviderFor(UserNotificationSettingsController)
const userNotificationSettingsControllerProvider =
    UserNotificationSettingsControllerFamily();

/// See also [UserNotificationSettingsController].
class UserNotificationSettingsControllerFamily
    extends Family<UserNotificationSettingsState> {
  /// See also [UserNotificationSettingsController].
  const UserNotificationSettingsControllerFamily();

  /// See also [UserNotificationSettingsController].
  UserNotificationSettingsControllerProvider call({
    UserNotificationSettingsState initialState =
        const UserNotificationSettingsState.idle(),
  }) {
    return UserNotificationSettingsControllerProvider(
      initialState: initialState,
    );
  }

  @override
  UserNotificationSettingsControllerProvider getProviderOverride(
    covariant UserNotificationSettingsControllerProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    userNotificationSettingsRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    userNotificationSettingsRepositoryProvider,
    ...?userNotificationSettingsRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userNotificationSettingsControllerProvider';
}

/// See also [UserNotificationSettingsController].
class UserNotificationSettingsControllerProvider
    extends AutoDisposeNotifierProviderImpl<UserNotificationSettingsController,
        UserNotificationSettingsState> {
  /// See also [UserNotificationSettingsController].
  UserNotificationSettingsControllerProvider({
    UserNotificationSettingsState initialState =
        const UserNotificationSettingsState.idle(),
  }) : this._internal(
          () =>
              UserNotificationSettingsController()..initialState = initialState,
          from: userNotificationSettingsControllerProvider,
          name: r'userNotificationSettingsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userNotificationSettingsControllerHash,
          dependencies: UserNotificationSettingsControllerFamily._dependencies,
          allTransitiveDependencies: UserNotificationSettingsControllerFamily
              ._allTransitiveDependencies,
          initialState: initialState,
        );

  UserNotificationSettingsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final UserNotificationSettingsState initialState;

  @override
  UserNotificationSettingsState runNotifierBuild(
    covariant UserNotificationSettingsController notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(UserNotificationSettingsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserNotificationSettingsControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<UserNotificationSettingsController,
      UserNotificationSettingsState> createElement() {
    return _UserNotificationSettingsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserNotificationSettingsControllerProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserNotificationSettingsControllerRef
    on AutoDisposeNotifierProviderRef<UserNotificationSettingsState> {
  /// The parameter `initialState` of this provider.
  UserNotificationSettingsState get initialState;
}

class _UserNotificationSettingsControllerProviderElement
    extends AutoDisposeNotifierProviderElement<
        UserNotificationSettingsController, UserNotificationSettingsState>
    with UserNotificationSettingsControllerRef {
  _UserNotificationSettingsControllerProviderElement(super.provider);

  @override
  UserNotificationSettingsState get initialState =>
      (origin as UserNotificationSettingsControllerProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_settings_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userNotificationSettingsRepositoryHash() =>
    r'cc5b4d301875b68be84e306b7a42db400c989fd4';

/// See also [userNotificationSettingsRepository].
@ProviderFor(userNotificationSettingsRepository)
final userNotificationSettingsRepositoryProvider =
    AutoDisposeProvider<UserNotificationSettingsRepository>.internal(
  userNotificationSettingsRepository,
  name: r'userNotificationSettingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userNotificationSettingsRepositoryHash,
  dependencies: <ProviderOrFamily>[userNotificationSettingsDataSourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    userNotificationSettingsDataSourceProvider,
    ...?userNotificationSettingsDataSourceProvider.allTransitiveDependencies
  },
);

typedef UserNotificationSettingsRepositoryRef
    = AutoDisposeProviderRef<UserNotificationSettingsRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

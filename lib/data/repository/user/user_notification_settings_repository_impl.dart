// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user_notification_settings.dart';
import 'package:flutter_stv_kit/data/remote/user/user_notification_settings_source.dart';
import 'package:flutter_stv_kit/data/remote/user/user_notification_settings_source_impl.dart';
import 'package:flutter_stv_kit/data/repository/user/user_notification_settings_repository.dart';
import 'package:flutter_stv_kit/data/result.dart';

part 'user_notification_settings_repository_impl.g.dart';

@Riverpod(dependencies: [userNotificationSettingsDataSource])
UserNotificationSettingsRepository userNotificationSettingsRepository(
    UserNotificationSettingsRepositoryRef ref) {
  return UserNotificationSettingsRepositoryImpl(
    ref.watch(userNotificationSettingsDataSourceProvider),
  );
}

class UserNotificationSettingsRepositoryImpl
    implements UserNotificationSettingsRepository {
  const UserNotificationSettingsRepositoryImpl(this.dataSource);

  final UserNotificationSettingsDataSource dataSource;

  @override
  Future<Result<UserNotificationSettings>> fetch() async =>
      Result.guardFuture(() async => dataSource.fetch());
}

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user_notification_settings.dart';
import 'package:flutter_stv_kit/data/remote/user/user_notification_settings_source.dart';
import 'package:flutter_stv_kit/foundation/delay.dart';

part 'user_notification_settings_source_impl.g.dart';

@Riverpod(dependencies: [])
UserNotificationSettingsDataSource userNotificationSettingsDataSource(
        UserNotificationSettingsDataSourceRef ref) =>
    UserNotificationSettingsDataSourceImpl();

class UserNotificationSettingsDataSourceImpl
    implements UserNotificationSettingsDataSource {
  @override
  Future<UserNotificationSettings> fetch() async {
    await delay(500);

    return Future.value(
      const UserNotificationSettings(
        canReceiveMessagePush: false,
        canReceiveNewsPush: true,
        canReceiveMessageEmail: true,
        canReceiveNewsEmail: false,
      ),
    );
  }
}

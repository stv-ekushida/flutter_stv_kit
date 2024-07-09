// Project imports:
import 'package:flutter_stv_kit/data/model/user/user_notification_settings.dart';

abstract class UserNotificationSettingsDataSource {
  Future<UserNotificationSettings> fetch();
}

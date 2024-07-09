// Project imports:
import 'package:flutter_stv_kit/data/model/user/user_notification_settings.dart';
import 'package:flutter_stv_kit/data/result.dart';

abstract class UserNotificationSettingsRepository {
  Future<Result<UserNotificationSettings>> fetch();
}

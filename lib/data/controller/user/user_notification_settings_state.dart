// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user_notification_settings.dart';

part 'user_notification_settings_state.freezed.dart';

@freezed
abstract class UserNotificationSettingsState
    with _$UserNotificationSettingsState {
  const factory UserNotificationSettingsState.idle() = _Idle;
  const factory UserNotificationSettingsState.data(
      UserNotificationSettings? userNotificationSettings) = _Data;
}

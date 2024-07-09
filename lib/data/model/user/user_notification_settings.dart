// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_notification_settings.freezed.dart';
part 'user_notification_settings.g.dart';

@Freezed()
class UserNotificationSettings with _$UserNotificationSettings {
  const factory UserNotificationSettings({
    @JsonKey(name: 'receive_message_push') required bool canReceiveMessagePush,
    @JsonKey(name: 'receive_news_push') required bool canReceiveNewsPush,
    @JsonKey(name: 'receive_message_email')
    required bool canReceiveMessageEmail,
    @JsonKey(name: 'receive_news_email') required bool canReceiveNewsEmail,
  }) = _UserNotificationSettings;

  factory UserNotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationSettingsFromJson(json);
}

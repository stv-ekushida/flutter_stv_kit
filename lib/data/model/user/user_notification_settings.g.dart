// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNotificationSettingsImpl _$$UserNotificationSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNotificationSettingsImpl(
      canReceiveMessagePush: json['receive_message_push'] as bool,
      canReceiveNewsPush: json['receive_news_push'] as bool,
      canReceiveMessageEmail: json['receive_message_email'] as bool,
      canReceiveNewsEmail: json['receive_news_email'] as bool,
    );

Map<String, dynamic> _$$UserNotificationSettingsImplToJson(
        _$UserNotificationSettingsImpl instance) =>
    <String, dynamic>{
      'receive_message_push': instance.canReceiveMessagePush,
      'receive_news_push': instance.canReceiveNewsPush,
      'receive_message_email': instance.canReceiveMessageEmail,
      'receive_news_email': instance.canReceiveNewsEmail,
    };

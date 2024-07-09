// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserNotificationSettings _$UserNotificationSettingsFromJson(
    Map<String, dynamic> json) {
  return _UserNotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$UserNotificationSettings {
  @JsonKey(name: 'receive_message_push')
  bool get canReceiveMessagePush => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_news_push')
  bool get canReceiveNewsPush => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_message_email')
  bool get canReceiveMessageEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_news_email')
  bool get canReceiveNewsEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNotificationSettingsCopyWith<UserNotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationSettingsCopyWith<$Res> {
  factory $UserNotificationSettingsCopyWith(UserNotificationSettings value,
          $Res Function(UserNotificationSettings) then) =
      _$UserNotificationSettingsCopyWithImpl<$Res, UserNotificationSettings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'receive_message_push') bool canReceiveMessagePush,
      @JsonKey(name: 'receive_news_push') bool canReceiveNewsPush,
      @JsonKey(name: 'receive_message_email') bool canReceiveMessageEmail,
      @JsonKey(name: 'receive_news_email') bool canReceiveNewsEmail});
}

/// @nodoc
class _$UserNotificationSettingsCopyWithImpl<$Res,
        $Val extends UserNotificationSettings>
    implements $UserNotificationSettingsCopyWith<$Res> {
  _$UserNotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReceiveMessagePush = null,
    Object? canReceiveNewsPush = null,
    Object? canReceiveMessageEmail = null,
    Object? canReceiveNewsEmail = null,
  }) {
    return _then(_value.copyWith(
      canReceiveMessagePush: null == canReceiveMessagePush
          ? _value.canReceiveMessagePush
          : canReceiveMessagePush // ignore: cast_nullable_to_non_nullable
              as bool,
      canReceiveNewsPush: null == canReceiveNewsPush
          ? _value.canReceiveNewsPush
          : canReceiveNewsPush // ignore: cast_nullable_to_non_nullable
              as bool,
      canReceiveMessageEmail: null == canReceiveMessageEmail
          ? _value.canReceiveMessageEmail
          : canReceiveMessageEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      canReceiveNewsEmail: null == canReceiveNewsEmail
          ? _value.canReceiveNewsEmail
          : canReceiveNewsEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotificationSettingsImplCopyWith<$Res>
    implements $UserNotificationSettingsCopyWith<$Res> {
  factory _$$UserNotificationSettingsImplCopyWith(
          _$UserNotificationSettingsImpl value,
          $Res Function(_$UserNotificationSettingsImpl) then) =
      __$$UserNotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'receive_message_push') bool canReceiveMessagePush,
      @JsonKey(name: 'receive_news_push') bool canReceiveNewsPush,
      @JsonKey(name: 'receive_message_email') bool canReceiveMessageEmail,
      @JsonKey(name: 'receive_news_email') bool canReceiveNewsEmail});
}

/// @nodoc
class __$$UserNotificationSettingsImplCopyWithImpl<$Res>
    extends _$UserNotificationSettingsCopyWithImpl<$Res,
        _$UserNotificationSettingsImpl>
    implements _$$UserNotificationSettingsImplCopyWith<$Res> {
  __$$UserNotificationSettingsImplCopyWithImpl(
      _$UserNotificationSettingsImpl _value,
      $Res Function(_$UserNotificationSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReceiveMessagePush = null,
    Object? canReceiveNewsPush = null,
    Object? canReceiveMessageEmail = null,
    Object? canReceiveNewsEmail = null,
  }) {
    return _then(_$UserNotificationSettingsImpl(
      canReceiveMessagePush: null == canReceiveMessagePush
          ? _value.canReceiveMessagePush
          : canReceiveMessagePush // ignore: cast_nullable_to_non_nullable
              as bool,
      canReceiveNewsPush: null == canReceiveNewsPush
          ? _value.canReceiveNewsPush
          : canReceiveNewsPush // ignore: cast_nullable_to_non_nullable
              as bool,
      canReceiveMessageEmail: null == canReceiveMessageEmail
          ? _value.canReceiveMessageEmail
          : canReceiveMessageEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      canReceiveNewsEmail: null == canReceiveNewsEmail
          ? _value.canReceiveNewsEmail
          : canReceiveNewsEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNotificationSettingsImpl implements _UserNotificationSettings {
  const _$UserNotificationSettingsImpl(
      {@JsonKey(name: 'receive_message_push')
      required this.canReceiveMessagePush,
      @JsonKey(name: 'receive_news_push') required this.canReceiveNewsPush,
      @JsonKey(name: 'receive_message_email')
      required this.canReceiveMessageEmail,
      @JsonKey(name: 'receive_news_email') required this.canReceiveNewsEmail});

  factory _$UserNotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNotificationSettingsImplFromJson(json);

  @override
  @JsonKey(name: 'receive_message_push')
  final bool canReceiveMessagePush;
  @override
  @JsonKey(name: 'receive_news_push')
  final bool canReceiveNewsPush;
  @override
  @JsonKey(name: 'receive_message_email')
  final bool canReceiveMessageEmail;
  @override
  @JsonKey(name: 'receive_news_email')
  final bool canReceiveNewsEmail;

  @override
  String toString() {
    return 'UserNotificationSettings(canReceiveMessagePush: $canReceiveMessagePush, canReceiveNewsPush: $canReceiveNewsPush, canReceiveMessageEmail: $canReceiveMessageEmail, canReceiveNewsEmail: $canReceiveNewsEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotificationSettingsImpl &&
            (identical(other.canReceiveMessagePush, canReceiveMessagePush) ||
                other.canReceiveMessagePush == canReceiveMessagePush) &&
            (identical(other.canReceiveNewsPush, canReceiveNewsPush) ||
                other.canReceiveNewsPush == canReceiveNewsPush) &&
            (identical(other.canReceiveMessageEmail, canReceiveMessageEmail) ||
                other.canReceiveMessageEmail == canReceiveMessageEmail) &&
            (identical(other.canReceiveNewsEmail, canReceiveNewsEmail) ||
                other.canReceiveNewsEmail == canReceiveNewsEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, canReceiveMessagePush,
      canReceiveNewsPush, canReceiveMessageEmail, canReceiveNewsEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotificationSettingsImplCopyWith<_$UserNotificationSettingsImpl>
      get copyWith => __$$UserNotificationSettingsImplCopyWithImpl<
          _$UserNotificationSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNotificationSettingsImplToJson(
      this,
    );
  }
}

abstract class _UserNotificationSettings implements UserNotificationSettings {
  const factory _UserNotificationSettings(
          {@JsonKey(name: 'receive_message_push')
          required final bool canReceiveMessagePush,
          @JsonKey(name: 'receive_news_push')
          required final bool canReceiveNewsPush,
          @JsonKey(name: 'receive_message_email')
          required final bool canReceiveMessageEmail,
          @JsonKey(name: 'receive_news_email')
          required final bool canReceiveNewsEmail}) =
      _$UserNotificationSettingsImpl;

  factory _UserNotificationSettings.fromJson(Map<String, dynamic> json) =
      _$UserNotificationSettingsImpl.fromJson;

  @override
  @JsonKey(name: 'receive_message_push')
  bool get canReceiveMessagePush;
  @override
  @JsonKey(name: 'receive_news_push')
  bool get canReceiveNewsPush;
  @override
  @JsonKey(name: 'receive_message_email')
  bool get canReceiveMessageEmail;
  @override
  @JsonKey(name: 'receive_news_email')
  bool get canReceiveNewsEmail;
  @override
  @JsonKey(ignore: true)
  _$$UserNotificationSettingsImplCopyWith<_$UserNotificationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

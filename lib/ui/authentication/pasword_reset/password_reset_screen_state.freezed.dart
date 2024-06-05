// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordResetScreenState {
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordResetScreenStateCopyWith<PasswordResetScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetScreenStateCopyWith<$Res> {
  factory $PasswordResetScreenStateCopyWith(PasswordResetScreenState value,
          $Res Function(PasswordResetScreenState) then) =
      _$PasswordResetScreenStateCopyWithImpl<$Res, PasswordResetScreenState>;
  @useResult
  $Res call({bool isSuccess, bool isLoading});
}

/// @nodoc
class _$PasswordResetScreenStateCopyWithImpl<$Res,
        $Val extends PasswordResetScreenState>
    implements $PasswordResetScreenStateCopyWith<$Res> {
  _$PasswordResetScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordResetScreenStateImplCopyWith<$Res>
    implements $PasswordResetScreenStateCopyWith<$Res> {
  factory _$$PasswordResetScreenStateImplCopyWith(
          _$PasswordResetScreenStateImpl value,
          $Res Function(_$PasswordResetScreenStateImpl) then) =
      __$$PasswordResetScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, bool isLoading});
}

/// @nodoc
class __$$PasswordResetScreenStateImplCopyWithImpl<$Res>
    extends _$PasswordResetScreenStateCopyWithImpl<$Res,
        _$PasswordResetScreenStateImpl>
    implements _$$PasswordResetScreenStateImplCopyWith<$Res> {
  __$$PasswordResetScreenStateImplCopyWithImpl(
      _$PasswordResetScreenStateImpl _value,
      $Res Function(_$PasswordResetScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_$PasswordResetScreenStateImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordResetScreenStateImpl implements _PasswordResetScreenState {
  const _$PasswordResetScreenStateImpl(
      {required this.isSuccess, this.isLoading = false});

  @override
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PasswordResetScreenState(isSuccess: $isSuccess, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetScreenStateImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetScreenStateImplCopyWith<_$PasswordResetScreenStateImpl>
      get copyWith => __$$PasswordResetScreenStateImplCopyWithImpl<
          _$PasswordResetScreenStateImpl>(this, _$identity);
}

abstract class _PasswordResetScreenState implements PasswordResetScreenState {
  const factory _PasswordResetScreenState(
      {required final bool isSuccess,
      final bool isLoading}) = _$PasswordResetScreenStateImpl;

  @override
  bool get isSuccess;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$PasswordResetScreenStateImplCopyWith<_$PasswordResetScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginScreenState {
  Auth? get auth => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call({Auth? auth, bool isLoading});

  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res>? get auth {
    if (_value.auth == null) {
      return null;
    }

    return $AuthCopyWith<$Res>(_value.auth!, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginScreenStateImplCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$LoginScreenStateImplCopyWith(_$LoginScreenStateImpl value,
          $Res Function(_$LoginScreenStateImpl) then) =
      __$$LoginScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Auth? auth, bool isLoading});

  @override
  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$$LoginScreenStateImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenStateImpl>
    implements _$$LoginScreenStateImplCopyWith<$Res> {
  __$$LoginScreenStateImplCopyWithImpl(_$LoginScreenStateImpl _value,
      $Res Function(_$LoginScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$LoginScreenStateImpl(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginScreenStateImpl implements _LoginScreenState {
  const _$LoginScreenStateImpl({required this.auth, this.isLoading = false});

  @override
  final Auth? auth;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LoginScreenState(auth: $auth, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenStateImpl &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      __$$LoginScreenStateImplCopyWithImpl<_$LoginScreenStateImpl>(
          this, _$identity);
}

abstract class _LoginScreenState implements LoginScreenState {
  const factory _LoginScreenState(
      {required final Auth? auth,
      final bool isLoading}) = _$LoginScreenStateImpl;

  @override
  Auth? get auth;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

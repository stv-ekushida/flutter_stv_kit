// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_page_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPageScreenState {
  User? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyPageScreenStateCopyWith<MyPageScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageScreenStateCopyWith<$Res> {
  factory $MyPageScreenStateCopyWith(
          MyPageScreenState value, $Res Function(MyPageScreenState) then) =
      _$MyPageScreenStateCopyWithImpl<$Res, MyPageScreenState>;
  @useResult
  $Res call({User? user, bool isLoading});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MyPageScreenStateCopyWithImpl<$Res, $Val extends MyPageScreenState>
    implements $MyPageScreenStateCopyWith<$Res> {
  _$MyPageScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyPageScreenStateImplCopyWith<$Res>
    implements $MyPageScreenStateCopyWith<$Res> {
  factory _$$MyPageScreenStateImplCopyWith(_$MyPageScreenStateImpl value,
          $Res Function(_$MyPageScreenStateImpl) then) =
      __$$MyPageScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, bool isLoading});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MyPageScreenStateImplCopyWithImpl<$Res>
    extends _$MyPageScreenStateCopyWithImpl<$Res, _$MyPageScreenStateImpl>
    implements _$$MyPageScreenStateImplCopyWith<$Res> {
  __$$MyPageScreenStateImplCopyWithImpl(_$MyPageScreenStateImpl _value,
      $Res Function(_$MyPageScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$MyPageScreenStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyPageScreenStateImpl implements _MyPageScreenState {
  const _$MyPageScreenStateImpl({required this.user, this.isLoading = false});

  @override
  final User? user;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MyPageScreenState(user: $user, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPageScreenStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPageScreenStateImplCopyWith<_$MyPageScreenStateImpl> get copyWith =>
      __$$MyPageScreenStateImplCopyWithImpl<_$MyPageScreenStateImpl>(
          this, _$identity);
}

abstract class _MyPageScreenState implements MyPageScreenState {
  const factory _MyPageScreenState(
      {required final User? user,
      final bool isLoading}) = _$MyPageScreenStateImpl;

  @override
  User? get user;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MyPageScreenStateImplCopyWith<_$MyPageScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

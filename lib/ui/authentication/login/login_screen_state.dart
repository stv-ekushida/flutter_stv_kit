// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';

part 'login_screen_state.freezed.dart';

@freezed
abstract class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState.none() = _None;
  const factory LoginScreenState.data(Auth auth) = _Data;
}

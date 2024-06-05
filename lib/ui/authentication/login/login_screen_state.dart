// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';

part 'login_screen_state.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState({
    required Auth? auth,
    @Default(false) bool isLoading,
  }) = _LoginScreenState;
}

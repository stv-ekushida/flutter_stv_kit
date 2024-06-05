// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_screen_state.freezed.dart';

@freezed
class PasswordResetScreenState with _$PasswordResetScreenState {
  const factory PasswordResetScreenState({
    required bool isSuccess,
    @Default(false) bool isLoading,
  }) = _PasswordResetScreenState;
}

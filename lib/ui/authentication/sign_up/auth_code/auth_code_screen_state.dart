// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// Project imports:
import 'package:flutter_stv_kit/data/api_error.dart';

part 'auth_code_screen_state.freezed.dart';

@freezed
abstract class AuthCodeScreenState with _$AuthCodeScreenState {
  const factory AuthCodeScreenState.none() = _None;
  const factory AuthCodeScreenState.loading() = _Loading;
  const factory AuthCodeScreenState.error(AppError error) = _Error;
  const factory AuthCodeScreenState.data() = _Data;
}

void errorStateListener(BuildContext context, AuthCodeScreenState state) {
  state.whenOrNull(
    error: (error) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(message: error.message),
    ),
  );
}

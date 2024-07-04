// Project imports:
import 'package:flutter/material.dart';
import 'package:flutter_stv_kit/data/api_error.dart';
import 'package:flutter_stv_kit/data/model/auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

part 'sign_up_with_email_screen_state.freezed.dart';

@freezed
abstract class SignUpWithEmailScreenState with _$SignUpWithEmailScreenState {
  const factory SignUpWithEmailScreenState.none() = _None;
  const factory SignUpWithEmailScreenState.loading() = _Loading;
  const factory SignUpWithEmailScreenState.error(AppError error) = _Error;
  const factory SignUpWithEmailScreenState.data(Auth auth) = _Data;
}

void errorStateListener(
    BuildContext context, SignUpWithEmailScreenState state) {
  state.whenOrNull(
    error: (error) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(message: error.message),
    ),
  );
}

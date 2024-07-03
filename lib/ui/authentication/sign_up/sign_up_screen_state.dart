// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// Project imports:
import 'package:flutter_stv_kit/data/api_error.dart';
import 'package:flutter_stv_kit/data/model/auth/auth.dart';

part 'sign_up_screen_state.freezed.dart';

@freezed
abstract class SignUpScreenState with _$SignUpScreenState {
  const factory SignUpScreenState.none() = _None;
  const factory SignUpScreenState.loading() = _Loading;
  const factory SignUpScreenState.error(AppError error) = _Error;
  const factory SignUpScreenState.data(Auth auth) = _Data;
}

void errorStateListener(BuildContext context, SignUpScreenState state) {
  state.whenOrNull(
    error: (error) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(message: error.message),
    ),
  );
}

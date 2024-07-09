// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// Project imports:
import 'package:flutter_stv_kit/data/api_error.dart';

part 'widget_basic_state.freezed.dart';

@freezed
abstract class WidgetBasicState with _$WidgetBasicState {
  const factory WidgetBasicState.idle() = _Idle;
  const factory WidgetBasicState.error(AppError error) = _Error;
  const factory WidgetBasicState.loading() = _Loading;
}

void errorStateListener(BuildContext context, WidgetBasicState state) {
  state.whenOrNull(
    error: (error) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: error.message,
      ),
    ),
  );
}

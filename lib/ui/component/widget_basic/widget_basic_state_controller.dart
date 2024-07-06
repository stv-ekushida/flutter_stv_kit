// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/api_error.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state.dart';

part 'widget_basic_state_controller.g.dart';

@Riverpod(dependencies: [])
class WidgetBasicStateController extends _$WidgetBasicStateController {
  @override
  WidgetBasicState build({
    WidgetBasicState initialState = const WidgetBasicState.none(),
  }) {
    return initialState;
  }

  Future<void> none() async => state = const WidgetBasicState.none();

  Future<void> loading() async => state = const WidgetBasicState.loading();

  Future<void> error(AppError error) async =>
      state = WidgetBasicState.error(error);
}

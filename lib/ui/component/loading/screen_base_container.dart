// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_stv_kit/ui/component/loading/custom_indicator.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';

class ScreenBaseContainer extends ConsumerWidget {
  const ScreenBaseContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //エラーハンドリング
    ref.listen(
      widgetBasicStateControllerProvider(),
      (_, next) {
        errorStateListener(context, next);
      },
    );

    //ローディング
    final state = ref.watch(widgetBasicStateControllerProvider());

    return Stack(
      children: [
        child,
        if (state == const WidgetBasicState.loading()) const CustomIndicator(),
      ],
    );
  }
}

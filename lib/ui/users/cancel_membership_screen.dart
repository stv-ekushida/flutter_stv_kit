// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/data/controller/auth/auth_controller.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/loading/screen_base_container.dart';

class CancelMembershipScreen extends StatelessWidget {
  const CancelMembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(i18n.strings.cancelMemberShip.screen)),
      body: const ScreenBaseContainer(
        child: _CancelMembershipContainer(),
      ),
    );
  }
}

class _CancelMembershipContainer extends ConsumerStatefulWidget {
  const _CancelMembershipContainer();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CancelMembershipContainerState();
}

class _CancelMembershipContainerState
    extends ConsumerState<_CancelMembershipContainer> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            i18n.strings.cancelMemberShip.description,
            style: theme.textTheme.medium.bold(),
          ),
          const Gap(32),
          ElevatedButton(
            onPressed: () => _onPressedCancelMemberShip(),
            child: Text(
              i18n.strings.cancelMemberShip.btn,
              style: theme.textTheme.medium,
            ),
          )
        ],
      ),
    );
  }

  void _onPressedCancelMemberShip() {
    context.showConfirmDialog(
      title: i18n.strings.confirm.cancelMemberShip.title,
      message: i18n.strings.confirm.cancelMemberShip.message,
      onPressed: () async => await _invokeCancelMemberShip(),
    );
  }

  Future<void> _invokeCancelMemberShip() async {
    final result = await ref.read(authControllerProvider().notifier).cancel();

    if (!result) return;
    if (!mounted) return;

    context.goNamed(ScreenType.signUp.name);
  }
}

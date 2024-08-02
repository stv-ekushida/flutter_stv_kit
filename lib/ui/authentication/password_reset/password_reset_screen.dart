// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/data/controller/auth/auth_controller.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';
import 'package:flutter_stv_kit/ui/component/loading/screen_base_container.dart';

class PasswordResetScreen extends ConsumerStatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  ConsumerState<PasswordResetScreen> createState() =>
      _PasswordResetScreenState();
}

class _PasswordResetScreenState extends ConsumerState<PasswordResetScreen> {
  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.passwordReset.screen),
      ),
      body: ScreenBaseContainer(
        child: _buildBody(theme),
      ),
    );
  }

  Widget _buildBody(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PasswordResetHeader(),
            const Gap(32),
            _buildEmailSection(theme.textTheme),
            const Gap(32),
            _buildResetPasswordSection(theme.textTheme),
          ],
        ),
      ),
    );
  }

  /// メールアドレス
  Widget _buildEmailSection(AppTextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.passwordReset.email,
          style: textTheme.medium.bold(),
        ),
        const Gap(8),
        CustomTextField(
          key: const ValueKey('password_reset_screen_email'),
          hintText: i18n.strings.passwordReset.emailHint,
          textFieldType: TextFiledType.email,
          textController: emailTextController,
        ),
      ],
    );
  }

  Widget _buildResetPasswordSection(AppTextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          key: const ValueKey('password_reset_screen_reset_btn'),
          child: Text(
            i18n.strings.passwordReset.resetBtn,
            style: textTheme.medium,
          ),
          onPressed: () => _onPressedPasswordReset(),
        ),
      ],
    );
  }

  Future<void> _onPressedPasswordReset() async {
    if (emailTextController.text.isEmpty) {
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(message: i18n.strings.error.email),
      );
      return;
    }

    final result = await ref
        .read(authControllerProvider().notifier)
        .resetPassword(email: emailTextController.text);

    if (!result) return;
    if (!mounted) return;

    context.showInfoDialog(
      title: i18n.strings.info.passwordReset.title,
      message: i18n.strings.info.passwordReset.message,
      onPressed: () => context.pop(),
    );
  }
}

class PasswordResetHeader extends ConsumerWidget {
  const PasswordResetHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          i18n.strings.passwordReset.subTitle,
          style: theme.textTheme.large.bold(),
        ),
        const Gap(16),
        Text(
          i18n.strings.passwordReset.description,
          style: theme.textTheme.small,
        ),
      ],
    );
  }
}

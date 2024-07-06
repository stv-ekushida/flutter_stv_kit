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
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/authentication/password_reset/password_reset_screen_view_model.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_indicator.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';

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
    final state = ref.watch(passwordResetScreenViewModelProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.passwordReset.screen),
      ),
      body: Stack(
        children: [
          _buildBody,
          if (state.isLoading) const CustomIndicator(),
        ],
      ),
    );
  }

  Widget get _buildBody {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ..._buildHeader,
            const Gap(32),
            _buildEmailSection,
            const Gap(32),
            ..._buildResetPasswordSection,
          ],
        ),
      ),
    );
  }

  List<Widget> get _buildHeader {
    return [
      Text(
        i18n.strings.passwordReset.subTitle,
        style: appTextTheme.large.bold(),
      ),
      const Gap(16),
      Flexible(
        child: Text(
          i18n.strings.passwordReset.description,
          style: appTextTheme.small,
        ),
      ),
    ];
  }

  /// メールアドレス
  Widget get _buildEmailSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.passwordReset.email,
          style: appTextTheme.medium.bold(),
        ),
        const Gap(8),
        CustomTextField(
          hintText: i18n.strings.passwordReset.emailHint,
          textFieldType: TextFiledType.email,
          textController: emailTextController,
        ),
      ],
    );
  }

  List<Widget> get _buildResetPasswordSection {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: i18n.strings.passwordReset.resetBtn,
            onPressed: () => _onPressedPasswordReset(),
          ),
        ],
      )
    ];
  }

  Future<void> _onPressedPasswordReset() async {
    if (emailTextController.text.isEmpty) {
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: i18n.strings.error.email,
        ),
      );
      return;
    }

    final result = await ref
        .read(passwordResetScreenViewModelProvider().notifier)
        .resetPassword(
          email: emailTextController.text,
        );

    if (!result) {
      return;
    }

    if (!mounted) {
      return;
    }

    context.showInfoDialog(
      title: i18n.strings.info.passwordReset.title,
      message: i18n.strings.info.passwordReset.message,
      onPressed: () {
        context.pop();
      },
    );
  }
}

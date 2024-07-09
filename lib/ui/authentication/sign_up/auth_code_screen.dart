// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/data/controller/auth/auth_controller.dart';
import 'package:flutter_stv_kit/ui/component/loading/screen_base_container.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';

class AuthCodeScreen extends ConsumerStatefulWidget {
  const AuthCodeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthCodeScreenState();
}

class _AuthCodeScreenState extends ConsumerState<AuthCodeScreen> {
  final _authCodeTextController = TextEditingController();
  bool isAuthCodeValid = false;

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.authCode.screen),
      ),
      body: ScreenBaseContainer(
        child: _buildBody(theme.textTheme),
      ),
    );
  }

  Widget _buildBody(AppTextTheme textTheme) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Gap(16),
          const _AuthCodeSubTitle(),
          const Gap(32),
          _buildCodeSection(textTheme),
          const Gap(32),
          _buildSendAuthCode(textTheme),
        ],
      ),
    );
  }

  Widget _buildCodeSection(AppTextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.authCode.authCode,
          style: textTheme.large.bold(),
        ),
        const Gap(8),
        CustomTextField(
          hintText: i18n.strings.authCode.authCodeHint,
          textFieldType: TextFiledType.authCode,
          textController: _authCodeTextController,
          onChanged: (value) {
            setState(() {
              isAuthCodeValid = value.isNotEmpty;
            });
          },
        ),
        const Gap(8),
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {},
            child: Text(
              i18n.strings.authCode.resend,
              style: textTheme.medium,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSendAuthCode(AppTextTheme textTheme) {
    return ElevatedButton(
      onPressed: isAuthCodeValid ? () => _onPressedSendAuthCode() : null,
      child: Text(
        i18n.strings.authCode.sendBtn,
        style: textTheme.medium,
      ),
    );
  }

  Future<void> _onPressedSendAuthCode() async {
    final result = await ref
        .read(authControllerProvider().notifier)
        .authCodeInput(code: _authCodeTextController.text);

    if (!mounted) return;
    if (!result) return;

    context.showInfoDialog(
      title: i18n.strings.info.authCodeCompletion.title,
      message: i18n.strings.info.authCodeCompletion.message,
      btnName: i18n.strings.info.authCodeCompletion.btnName,
      onPressed: () => context.goNamed(ScreenType.home.name),
    );
  }
}

class _AuthCodeSubTitle extends ConsumerWidget {
  const _AuthCodeSubTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Text(
      i18n.strings.authCode.description,
      style: theme.textTheme.large.bold(),
    );
  }
}

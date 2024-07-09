// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/data/controller/auth/auth_controller.dart';
import 'package:flutter_stv_kit/ui/component/loading/screen_base_container.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';
import 'package:flutter_stv_kit/ui/component/logo.dart';

class SignUpWithEmail extends ConsumerStatefulWidget {
  const SignUpWithEmail({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpWithEmailState();
}

class _SignUpWithEmailState extends ConsumerState<SignUpWithEmail> {
  final emailTextControl = TextEditingController();
  final passwordTextControl = TextEditingController();
  bool isEmailValid = false;
  bool isPasswordValid = false;

  bool get isEmpty => !isEmailValid || !isPasswordValid;

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.signUpWithEmail.screen),
      ),
      body: ScreenBaseContainer(
        child: _buildBody(theme.textTheme),
      ),
    );
  }

  Widget _buildBody(AppTextTheme textTheme) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildLogo,
                const Gap(16),
                Text(
                  i18n.strings.signUpWithEmail.description,
                  style: textTheme.small,
                ),
                const Gap(32),
                _buildEmailSection(textTheme),
                const Gap(16),
                _buildPasswordSection(textTheme),
                const Gap(32),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: isEmpty ? null : () => _onPressedSignUp(),
                    child: Text(
                      i18n.strings.signUpWithEmail.nextBtn,
                      style: textTheme.medium,
                    ),
                  ),
                ),
                const Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get _buildLogo {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Logo(),
      ],
    );
  }

  Widget _buildEmailSection(AppTextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.signUpWithEmail.email,
          style: textTheme.large.bold(),
        ),
        const Gap(8),
        CustomTextField(
          hintText: i18n.strings.signUpWithEmail.emailHint,
          textFieldType: TextFiledType.email,
          textController: emailTextControl,
          onChanged: (value) {
            setState(() {
              isEmailValid = value.isNotEmpty;
            });
          },
        ),
        const Gap(8),
        Text(
          i18n.strings.signUpWithEmail.attention,
          style: textTheme.small,
        ),
      ],
    );
  }

  Widget _buildPasswordSection(AppTextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.signUpWithEmail.password,
          style: textTheme.large.bold(),
        ),
        const Gap(8),
        CustomTextField(
          hintText: i18n.strings.signUpWithEmail.passwordHint,
          textFieldType: TextFiledType.password,
          textController: passwordTextControl,
          obscureText: true,
          onChanged: (value) {
            setState(() {
              isPasswordValid = value.isNotEmpty;
            });
          },
        ),
      ],
    );
  }

  Future<void> _onPressedSignUp() async {
    final result =
        await ref.read(authControllerProvider().notifier).signUpWithEmail(
              email: emailTextControl.text,
              password: passwordTextControl.text,
            );

    if (!mounted) return;
    if (!result) return;

    context.showInfoDialog(
      title: i18n.strings.info.authCode.title,
      message: i18n.strings.info.authCode.message,
      onPressed: () {
        context.pop();
        context.goNamed(ScreenType.authCode.name);
      },
    );
  }
}

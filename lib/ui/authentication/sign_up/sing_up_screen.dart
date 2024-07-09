// Flutter imports:
import 'package:flutter/gestures.dart';
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
import 'package:flutter_stv_kit/ui/component/logo.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.signUp.screen),
      ),
      body: ScreenBaseContainer(
        child: _buildBody(theme.textTheme),
      ),
    );
  }

  Widget _buildBody(AppTextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildLogo,
              const Gap(16),
              ..._buildSignUpSection(textTheme),
              const Gap(32),
              _buildTermLink(textTheme),
              const Gap(32),
              const Divider(
                height: 0.5,
              ),
              const Gap(32),
              ..._buildLogin(textTheme),
            ],
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

  List<Widget> _buildSignUpSection(AppTextTheme textTheme) {
    return [
      const Gap(16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () => context.goNamed(ScreenType.signUpWithEmail.name),
            child: Text(
              i18n.strings.signUp.email,
              style: textTheme.medium.bold(),
            ),
          ),
        ],
      ),
      const Gap(16),
      OutlinedButton(
        onPressed: () async => _onPressedSignUpWithSns(),
        child: Text(
          i18n.strings.oauth.signUp.apple,
          style: textTheme.medium.bold(),
        ),
      ),
      const Gap(16),
      OutlinedButton(
        child: Text(
          i18n.strings.oauth.signUp.google,
          style: textTheme.medium.bold(),
        ),
        onPressed: () async => _onPressedSignUpWithSns(),
      ),
      const Gap(16),
      OutlinedButton(
        child: Text(
          i18n.strings.oauth.signUp.line,
          style: textTheme.medium.bold(),
        ),
        onPressed: () async => _onPressedSignUpWithSns(),
      ),
    ];
  }

  Widget _buildTermLink(AppTextTheme textTheme) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: i18n.strings.signUp.term,
          style: textTheme.small.copyWith(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // タップ時
            },
        ),
        TextSpan(
          text: i18n.strings.signUp.and,
          style: textTheme.small,
        ),
        TextSpan(
          text: i18n.strings.signUp.privacy,
          style: textTheme.small.copyWith(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // タップ時
            },
        ),
        TextSpan(
          text: i18n.strings.signUp.goto,
          style: textTheme.small,
        ),
      ],
    ));
  }

  List<Widget> _buildLogin(AppTextTheme textTheme) {
    return [
      Text(i18n.strings.signUp.gotoSignIn),
      const Gap(32),
      ElevatedButton(
        onPressed: () => context.goNamed(ScreenType.login.name),
        child: Text(
          i18n.strings.signUp.signIn,
          style: textTheme.medium,
        ),
      ),
    ];
  }

  Future<void> _onPressedSignUpWithSns() async {
    if (!mounted) {
      return;
    }
    const idToken = '111111';
    final notifier = ref.read(authControllerProvider().notifier);
    final result = await notifier.signUpWithSns(idToken: idToken);

    if (!mounted) return;
    if (!result) return;

    context.goNamed(ScreenType.home.name);
  }
}

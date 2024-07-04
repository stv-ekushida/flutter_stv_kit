// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/sign_up_screen_state.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/sign_up_screen_view_model.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_outlined_button.dart';
import 'package:flutter_stv_kit/ui/component/custom_indicator.dart';
import 'package:flutter_stv_kit/ui/component/logo.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signUpScreenViewModelProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.signUp.screen),
      ),
      body: Stack(
        children: [
          _buildBody,
          if (state == const SignUpScreenState.loading())
            const CustomIndicator(),
        ],
      ),
    );
  }

  Widget get _buildBody {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildLogo(),
              const Gap(16),
              ..._buildSignUpSection(),
              const Gap(32),
              _buildTermLink(),
              const Gap(32),
              const Divider(
                height: 0.5,
              ),
              const Gap(32),
              ..._buildLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Logo(),
      ],
    );
  }

  List<Widget> _buildSignUpSection() {
    return [
      const Gap(16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            title: i18n.strings.signUp.email,
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            onPressed: () => context.goNamed(ScreenType.signUpWithEmail.name),
          ),
        ],
      ),
      const Gap(16),
      CustomOutlinedButton(
        title: i18n.strings.oauth.signUp.apple,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onPressed: () async => _onPressedSignUpWithSns(),
      ),
      const Gap(16),
      CustomOutlinedButton(
        title: i18n.strings.oauth.signUp.google,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onPressed: () async => _onPressedSignUpWithSns(),
      ),
      const Gap(16),
      CustomOutlinedButton(
        title: i18n.strings.oauth.signUp.line,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onPressed: () async => _onPressedSignUpWithSns(),
      ),
    ];
  }

  Widget _buildTermLink() {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: i18n.strings.signUp.term,
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // タップ時
            },
        ),
        TextSpan(
          text: i18n.strings.signUp.and,
          style: const TextStyle(color: Colors.black),
        ),
        TextSpan(
          text: i18n.strings.signUp.privacy,
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // タップ時
            },
        ),
        TextSpan(
          text: i18n.strings.signUp.goto,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    ));
  }

  List<Widget> _buildLogin() {
    return [
      Text(i18n.strings.signUp.gotoSignIn),
      const Gap(32),
      CustomButton(
        title: i18n.strings.signUp.signIn,
        onPressed: () => context.goNamed(ScreenType.login.name),
      ),
    ];
  }

  Future<void> _onPressedSignUpWithSns() async {
    if (!mounted) {
      return;
    }
    const idToken = '111111';
    final notifier = ref.read(signUpScreenViewModelProvider().notifier);
    await notifier.signUpWithSns(idToken: idToken);
    final state = ref.watch(signUpScreenViewModelProvider());

    state.whenOrNull(
      data: (_) => context.goNamed(ScreenType.home.name),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/email/sign_up_with_email_screen_state.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/email/sign_up_with_email_screen_view_model.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/custom_indicator.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';
import 'package:flutter_stv_kit/ui/component/logo.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
    final state = ref.watch(signUpWithEmailScreenViewModelProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.signUpWithEmail.screen),
      ),
      body: Stack(
        children: [
          _buildBody,
          if (state == const SignUpWithEmailScreenState.loading())
            const CustomIndicator(),
        ],
      ),
    );
  }

  Widget get _buildBody {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildLogo(),
              const Gap(16),
              const Text('あなたのメールアドレスとパスワードを入力してください。'),
              const Gap(32),
              ..._buildEmailSection(),
              const Gap(16),
              ..._buildPasswordSection(),
              const Gap(32),
              CustomButton(
                title: i18n.strings.signUpWithEmail.nextBtn,
                onPressed: isEmpty ? null : () => _onPressedSignUp(),
              ),
              const Gap(32),
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

  List<Widget> _buildEmailSection() {
    return [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          i18n.strings.signUpWithEmail.email,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
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
    ];
  }

  List<Widget> _buildPasswordSection() {
    return [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          i18n.strings.signUpWithEmail.password,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
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
    ];
  }

  Future<void> _onPressedSignUp() async {
    await ref
        .read(SignUpWithEmailScreenViewModelProvider().notifier)
        .signUpWithEmail(
          email: emailTextControl.text,
          password: passwordTextControl.text,
        );

    if (!mounted) {
      return;
    }

    final state = ref.watch(SignUpWithEmailScreenViewModelProvider());

    state.whenOrNull(
      data: (_) => context.goNamed(ScreenType.home.name),
    );
  }
}

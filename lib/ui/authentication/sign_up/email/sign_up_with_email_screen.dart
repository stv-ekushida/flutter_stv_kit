// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/email/sign_up_with_email_screen_state.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/email/sign_up_with_email_screen_view_model.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';
import 'package:flutter_stv_kit/ui/component/loading/custom_indicator.dart';
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
                  style: appTextTheme.small,
                ),
                const Gap(32),
                _buildEmailSection,
                const Gap(16),
                _buildPasswordSection,
                const Gap(32),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    title: i18n.strings.signUpWithEmail.nextBtn,
                    onPressed: isEmpty ? null : () => _onPressedSignUp(),
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

  Widget get _buildEmailSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.signUpWithEmail.email,
          style: appTextTheme.large.bold(),
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
          style: appTextTheme.small,
        ),
      ],
    );
  }

  Widget get _buildPasswordSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.signUpWithEmail.password,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w600),
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

    state.whenOrNull(data: (_) {
      context.showInfoDialog(
        title: i18n.strings.info.authCode.title,
        message: i18n.strings.info.authCode.message,
        onPressed: () {
          context.pop();
          context.goNamed(ScreenType.authCode.name);
        },
      );
    });
  }
}

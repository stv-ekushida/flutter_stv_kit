// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_color.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/authentication/login/login_screen_view_model.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_sns_button.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_text_button.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';
import 'package:flutter_stv_kit/ui/component/loading/screen_base_container.dart';
import 'package:flutter_stv_kit/ui/component/logo.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final emailTextControl = TextEditingController();
  final passwordTextControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.login.screen),
      ),
      body: ScreenBaseContainer(
        child: _buildBody,
      ),
    );
  }

  Widget get _buildBody {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const _LoginLogo(),
              const Gap(16),
              _buildEmailSection,
              const Gap(16),
              _buildPasswordSection,
              const Gap(16),
              ..._buildLoginSection,
              const Gap(32),
              const _LoginPartition(),
              const Gap(32),
              ..._buildSNSSignIn,
              const Gap(32),
              const Divider(
                height: 0.5,
              ),
              const Gap(32),
              ..._buildSignUp,
              const Gap(32),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _buildEmailSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.login.email,
          style: appTextTheme.medium.bold(),
        ),
        const Gap(8),
        CustomTextField(
          hintText: i18n.strings.login.emailHint,
          textFieldType: TextFiledType.email,
          textController: emailTextControl,
        ),
      ],
    );
  }

  Widget get _buildPasswordSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.login.password,
          style: appTextTheme.medium.bold(),
        ),
        const Gap(8),
        CustomTextField(
          hintText: i18n.strings.login.passwordHint,
          textFieldType: TextFiledType.password,
          textController: passwordTextControl,
          obscureText: true,
        ),
      ],
    );
  }

  List<Widget> get _buildLoginSection {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomTextButton(
            title: i18n.strings.login.resetPassword,
            onPressed: () => context.goNamed(ScreenType.passwordReset.name),
          )
        ],
      ),
      const Gap(16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: i18n.strings.login.loginBtn,
            onPressed: () => _onPressedLogin(),
          ),
        ],
      )
    ];
  }

  void _onPressedLogin() {
    final email = emailTextControl.text;
    final password = passwordTextControl.text;

    if (email.isEmpty || password.isEmpty) {
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: i18n.strings.error.emailAndPassword,
        ),
      );
      return;
    }
    _onPressedLoginWithEmailAndPassword();
  }

  List<Widget> get _buildSNSSignIn {
    return [
      CustomSnsButton(
        title: i18n.strings.oauth.signIn.apple,
        iconData: FontAwesomeIcons.apple,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onPressed: () => _onPressedLoginWithEmailAndPassword(),
      ),
      const Gap(16),
      CustomSnsButton(
        title: i18n.strings.oauth.signIn.google,
        iconData: FontAwesomeIcons.google,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onPressed: () => _onPressedLoginWithEmailAndPassword(),
      ),
      const Gap(16),
      CustomSnsButton(
        title: i18n.strings.oauth.signIn.line,
        iconData: FontAwesomeIcons.line,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onPressed: () => _onPressedLoginWithEmailAndPassword(),
      ),
    ];
  }

  Future<void> _onPressedLoginWithEmailAndPassword() async {
    final result =
        await ref.read(loginScreenViewModelProvider().notifier).login(
              email: emailTextControl.text,
              password: passwordTextControl.text,
            );

    if (!mounted) {
      return;
    }

    if (result) {
      context.goNamed(ScreenType.home.name);
    }
  }

  List<Widget> get _buildSignUp {
    return [
      Text(
        i18n.strings.login.gotoSignUp,
        style: appTextTheme.medium,
      ),
      const Gap(32),
      CustomButton(
        title: i18n.strings.login.signUp,
        onPressed: () {
          context.goNamed(ScreenType.signUp.name);
        },
      ),
    ];
  }
}

class _LoginLogo extends StatelessWidget {
  const _LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Logo(),
      ],
    );
  }
}

class _LoginPartition extends StatelessWidget {
  const _LoginPartition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: AppColor.neutralVariantColor,
            ),
            height: 0.5,
          ),
        ),
        const Gap(32),
        Text(
          'または',
          style: appTextTheme.medium,
        ),
        const Gap(32),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: AppColor.neutralVariantColor,
            ),
            height: 0.5,
          ),
        ),
      ],
    );
  }
}

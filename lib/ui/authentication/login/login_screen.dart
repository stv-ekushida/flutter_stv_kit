// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
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
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.login.screen),
      ),
      body: ScreenBaseContainer(
        child: _buildBody(theme.textTheme),
      ),
    );
  }

  Widget _buildBody(AppTextTheme textTheme) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const _LoginLogo(),
              const Gap(16),
              _buildEmailSection(textTheme),
              const Gap(16),
              _buildPasswordSection(textTheme),
              const Gap(16),
              ..._buildLoginSection(textTheme),
              const Gap(32),
              const _LoginPartition(),
              const Gap(32),
              ..._buildSNSSignInSection(textTheme),
              const Gap(32),
              const Divider(
                height: 0.5,
              ),
              const Gap(32),
              ..._buildSignUp(textTheme),
              const Gap(32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailSection(AppTextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.login.email,
          style: textTheme.medium.bold(),
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

  Widget _buildPasswordSection(AppTextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.login.password,
          style: textTheme.medium.bold(),
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

  List<Widget> _buildLoginSection(AppTextTheme textTheme) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () => context.goNamed(ScreenType.passwordReset.name),
            child:
                Text(i18n.strings.login.resetPassword, style: textTheme.medium),
          )
        ],
      ),
      const Gap(16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text(i18n.strings.login.loginBtn,
                style: textTheme.medium.bold()),
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

  List<Widget> _buildSNSSignInSection(AppTextTheme textTheme) {
    final style = textTheme.medium.bold().copyWith(
          color: Colors.black,
        );

    return [
      OutlinedButton(
        child: Text(
          i18n.strings.oauth.signIn.apple,
          style: style,
        ),
        onPressed: () => _onPressedLoginWithEmailAndPassword(),
      ),
      const Gap(16),
      OutlinedButton(
        onPressed: () => _onPressedLoginWithEmailAndPassword(),
        child: Text(
          i18n.strings.oauth.signIn.google,
          style: style,
        ),
      ),
      const Gap(16),
      OutlinedButton(
        onPressed: () => _onPressedLoginWithEmailAndPassword(),
        child: Text(
          i18n.strings.oauth.signIn.line,
          style: style,
        ),
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

  List<Widget> _buildSignUp(AppTextTheme textTheme) {
    return [
      Text(
        i18n.strings.login.gotoSignUp,
        style: textTheme.medium,
      ),
      const Gap(32),
      ElevatedButton(
        onPressed: () {
          context.goNamed(ScreenType.signUp.name);
        },
        child: Text(
          i18n.strings.login.signUp,
          style: textTheme.medium.bold(),
        ),
      ),
    ];
  }
}

class _LoginLogo extends StatelessWidget {
  const _LoginLogo();

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

class _LoginPartition extends ConsumerWidget {
  const _LoginPartition();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

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
          style: theme.textTheme.medium,
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

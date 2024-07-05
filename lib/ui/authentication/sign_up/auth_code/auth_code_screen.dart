// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/auth_code/auth_code_screen_state.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/auth_code/auth_code_screen_view_model.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_text_button.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_indicator.dart';
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
    final state = ref.watch(authCodeScreenViewModelProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.authCode.screen),
      ),
      body: Stack(
        children: [
          _buildBody,
          if (state == const AuthCodeScreenState.loading())
            const CustomIndicator()
        ],
      ),
    );
  }

  Widget get _buildBody {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Gap(16),
          const _AuthCodeSubTitle(),
          const Gap(32),
          _buildCodeSection,
          const Gap(32),
          _buildSendAuthCode,
        ],
      ),
    );
  }

  Widget get _buildCodeSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.strings.authCode.authCode,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w600),
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
          child: CustomTextButton(
            title: i18n.strings.authCode.resend,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget get _buildSendAuthCode {
    return CustomButton(
      title: i18n.strings.authCode.sendBtn,
      onPressed: isAuthCodeValid ? () => _onPressedSendAuthCode() : null,
    );
  }

  Future<void> _onPressedSendAuthCode() async {
    final result = await ref
        .read(authCodeScreenViewModelProvider().notifier)
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

class _AuthCodeSubTitle extends StatelessWidget {
  const _AuthCodeSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      i18n.strings.authCode.description,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
  }
}

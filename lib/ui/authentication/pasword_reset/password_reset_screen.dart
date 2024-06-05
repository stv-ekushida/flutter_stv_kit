// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// Project imports:
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_button.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_field.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('パスワード再設定'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ..._buildHeader(),
            const Gap(32),
            ..._buildEmailSection(),
            const Gap(32),
            ..._buildResetPasswordSection(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildHeader() {
    return [
      const Text(
        'パスワードを忘れた方',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      const Gap(16),
      const Flexible(
        child: Text(
          'ご登録されたメールアドレスにパスワード再設定のご案内メールが送信されます。',
          style: TextStyle(fontSize: 14),
        ),
      ),
    ];
  }

  /// メールアドレス
  List<Widget> _buildEmailSection() {
    return [
      const Align(
        alignment: Alignment.centerLeft,
        child: Text('メールアドレス'),
      ),
      const Gap(8),
      CustomTextField(
        hintText: 'メールアドレスを入力してください',
        textFieldType: TextFiledType.email,
        textController: emailTextController,
      ),
    ];
  }

  List<Widget> _buildResetPasswordSection() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: 'パスワードをリセットする',
            onPressed: () => _onPressedPasswordReset(),
          ),
        ],
      )
    ];
  }

  void _onPressedPasswordReset() {
    if (emailTextController.text.isEmpty) {
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.error(
          message: "メールアドレスを正しく入力してください",
        ),
      );
      return;
    }

    context.showInfoDialog(
      'メールを確認してください',
      'メールにパスワード再設定メールを送信しました。',
      () {
        context.pop();
      },
    );
  }
}

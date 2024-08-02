import 'package:flutter/material.dart';
import 'package:flutter_stv_kit/gen/assets.gen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

class LoginScreenRobot {
  LoginScreenRobot(this.tester);

  WidgetTester tester;

  final _findable = _LoginScreenFindable();

  Future<void> enterEmail(String email) async {
    await tester.enterText(_findable.emailTextField, email);
  }

  Future<void> enterPassword(String password) async {
    await tester.enterText(_findable.passwordTextField, password);
  }

  Future<void> onTapLogin() async {
    await tester.tap(_findable.loginBtn);
    await tester.pumpAndSettle();
  }

  Future<void> onTapPasswordReset() async {
    await tester.tap(_findable.passwordResetBtn);
    await tester.pumpAndSettle();
  }

  void checkHomeScreenShown() {
    expect(find.widgetWithText(AppBar, 'ホーム'), findsOneWidget);
  }

  void checkPasswordResetScreenShown() {
    expect(find.widgetWithText(AppBar, 'パスワード再設定'), findsOneWidget);
  }

  void checkInvalidEmailOrPassword() {
    expect(find.widgetWithText(CustomSnackBar, 'メールアドレス及びパスワードを正しく入力してください'),
        findsOneWidget);
  }

  void checkLoginScreenShown() {
    expect(find.widgetWithText(AppBar, 'ログイン'), findsOneWidget);
  }
}

class _LoginScreenFindable {
  Finder get logoImage =>
      find.widgetWithImage(Image, Image.asset(Assets.images.logo.path).image);

  Finder get emailTextField => find.byKey(const ValueKey('login_screen_email'));

  Finder get passwordTextField =>
      find.byKey(const ValueKey('login_screen_password'));

  Finder get loginBtn => find.byKey(const ValueKey('login_screen_login_btn'));

  Finder get passwordResetBtn =>
      find.byKey(const ValueKey('login_screen_reset_password_btn'));

  Finder get errorMessage =>
      find.byKey(const ValueKey('login_screen_valid_error_empty'));
}

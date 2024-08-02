import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

class PasswordResetScreenRobot {
  PasswordResetScreenRobot(this.tester);

  WidgetTester tester;

  final _findable = _PasswordResetRobotFindable();

  Future<void> enterEmail(String email) async {
    await tester.enterText(_findable.emailTextField, email);
  }

  Future<void> onTapPasswordReset() async {
    await tester.tap(_findable.resetBtn);
    await tester.pumpAndSettle();
  }

  void checkInvalidEmail() {
    expect(find.widgetWithText(CustomSnackBar, 'メールアドレスを正しく入力してください'),
        findsOneWidget);
  }
}

class _PasswordResetRobotFindable {
  Finder get emailTextField =>
      find.byKey(const ValueKey('password_reset_screen_email'));

  Finder get resetBtn =>
      find.byKey(const ValueKey('password_reset_screen_reset_btn'));
}

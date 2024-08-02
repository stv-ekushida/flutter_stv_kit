import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'scenarios/robot/login_screen_robot.dart';
import 'utils/integration_test_helper.dart';
import 'scenarios/robot/dialog_robot.dart';
import 'scenarios/robot/password_reset_screen_robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Password Reset Screen Scenario', () {
    guardTestWidgets('Successful Password Reset with email', (tester) async {
      final loginRobot = LoginScreenRobot(tester);
      final passwordResetRobot = PasswordResetScreenRobot(tester);
      final dialogRobot = DialogRobot(tester);

      // パスワード再設定画面へ遷移
      await loginRobot.onTapPasswordReset();

      // パスワードリセット
      await passwordResetRobot.enterEmail('example@stv-tech.co.jp');
      await passwordResetRobot.onTapPasswordReset();

      // パスワードリセット成功
      dialogRobot.checkInfoDialog('メールにパスワード再設定メールを送信しました');
      await dialogRobot.onTapOk();

      // ログイン画面へ
      loginRobot.checkLoginScreenShown();
    });

    guardTestWidgets('Email address not entered', (tester) async {
      final loginRobot = LoginScreenRobot(tester);
      final passwordResetRobot = PasswordResetScreenRobot(tester);

      // パスワード再設定画面へ遷移
      await loginRobot.onTapPasswordReset();

      // パスワードリセット
      await passwordResetRobot.onTapPasswordReset();

      // メールアドレス未入力
      passwordResetRobot.checkInvalidEmail();
    });
  });
}

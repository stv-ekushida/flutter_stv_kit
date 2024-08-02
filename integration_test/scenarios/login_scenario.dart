import 'package:flutter_test/flutter_test.dart';

import 'robot/login_screen_robot.dart';

class LoginScenario {
  LoginScenario(this.tester);

  WidgetTester tester;

  Future<void> loginSuccessful() async {
    final robot = LoginScreenRobot(tester);
    await robot.enterEmail('example@stv-tech.co.jp');
    await robot.enterPassword('@Test12345abc');
    await robot.onTapLogin();
    robot.checkHomeScreenShown();
  }

  Future<void> navigatePasswordReset() async {
    final robot = LoginScreenRobot(tester);
    robot.onTapPasswordReset();
  }
}

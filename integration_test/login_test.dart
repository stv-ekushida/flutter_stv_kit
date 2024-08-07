import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'scenarios/robot/login_screen_robot.dart';
import 'utils/integration_test_helper.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Screen Scenario ', () {
    guardTestWidgets('Successful login with email and password',
        (tester) async {
      final robot = LoginScreenRobot(tester);
      await robot.enterEmail('example@stv-tech.co.jp');
      await robot.enterPassword('@Test12345abc');
      await robot.onTapLogin();
      robot.checkHomeScreenShown();
    });

    guardTestWidgets('Transition to password reset screen', (tester) async {
      final robot = LoginScreenRobot(tester);
      await robot.onTapPasswordReset();
      robot.checkPasswordResetScreenShown();
    });

    guardTestWidgets('Email address and password not entered', (tester) async {
      final robot = LoginScreenRobot(tester);
      await robot.onTapLogin();
      robot.checkInvalidEmailOrPassword();
    });
  });
}

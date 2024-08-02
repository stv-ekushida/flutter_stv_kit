import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

class DialogRobot {
  DialogRobot(this.tester);

  WidgetTester tester;

  final _findable = _DialogRobotFindable();

  void checkInfoDialog(String title) {
    expect(_findable.infoDialogMessage(title), findsOneWidget);
  }

  Future<void> onTapOk() async {
    await tester.tap(_findable.infoDialogOkBtn);
    await tester.pumpAndSettle();
  }
}

class _DialogRobotFindable {
  Finder infoDialogMessage(String text) => find.text(text);

  Finder get infoDialogOkBtn =>
      find.byKey(const ValueKey('info_dialog_ok_btn'));
}

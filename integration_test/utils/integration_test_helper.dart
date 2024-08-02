import 'package:flutter_stv_kit/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

void guardTestWidgets(
    String description,
    Future<void> Function(
      WidgetTester tester,
    ) test) {
  {
    testWidgets('Successful login with email and password', (tester) async {
      try {
        app.main();
        await tester.pumpAndSettle();
        await test(tester);
      } catch (e) {
        //TODO:
        print(e);
      }
    });
  }
}

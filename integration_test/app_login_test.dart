import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:riverpod_modifiers_example/main.dart' as app;

void main() {
  group(
    'app test',
    () {
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();

      testWidgets(
        'description',
        (tester) async {
          await _setupApp(tester);

          await _enterValues(tester);

          await _tapButton(tester);
        },
      );
    },
  );
}

Future<void> _tapButton(WidgetTester tester) async {
  // ignore: deprecated_member_use
  final loginButton = find.byType(RaisedButton).last;
  await tester.pumpAndSettle();

  await tester.tap(loginButton);
  await tester.pumpAndSettle();
}

Future<void> _enterValues(WidgetTester tester) async {
  final emailFormField = find.byType(TextFormField).first;
  await tester.enterText(emailFormField, 'mad');

  final passwordFormField = find.byType(TextFormField).last;
  await tester.enterText(passwordFormField, 'mad');
}

Future<void> _setupApp(WidgetTester tester) async {
  app.main();

  //The app state kee the same and we change any elements anymore.
  await tester.pumpAndSettle();
}

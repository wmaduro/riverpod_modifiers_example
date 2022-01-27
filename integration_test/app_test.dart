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
          app.main();

          tester.pumpAndSettle();
        },
      );
    },
  );
}

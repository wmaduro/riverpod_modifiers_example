import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:riverpod_modifiers_example/page/mytests/golden_study/golden_study_screen.dart';

void main() {
  testGoldens('golden: simple red text', (tester) async {
    // await loadAppFonts();

    await tester.pumpWidget(createApp(buildSimpleTextcreen()));

    await screenMatchesGolden(tester, 'simple_red_text');
  });
}

Widget createApp(Widget child) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Center(child: child)),
  );
}

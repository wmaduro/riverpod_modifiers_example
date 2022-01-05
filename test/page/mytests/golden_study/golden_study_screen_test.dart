import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:riverpod_modifiers_example/page/mytests/golden_study/golden_study_screen.dart';

void main() {
  testGoldens('golden: simple red text', (tester) async {
    // Load fonts to allow text and icon rendering.
    await loadAppFonts();

    // Render the widget by wrapping it in a MaterialApp.
    await tester.pumpWidget(createApp(buildSimpleTextcreen()));

    // Compare the snapshot to the golden file.
    await screenMatchesGolden(tester, 'simple_red_text');
  });
}

/// Will return the [child] widget centered inside a `MaterialApp` and a
/// `Scaffold`.
Widget createApp(Widget child) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Center(child: child)),
  );
}

import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:riverpod_modifiers_example/page/mytests/golden_study/golden_study_screen.dart';

final _devicesPhones = [
  Device.phone.copyWith(name: 'phone_portrait'),
  Device(name: 'phone_landscape', size: Device.phone.size.flipped),
  Device.tabletLandscape,
  Device.tabletPortrait,
];
void main() {
  testGoldens('golden: simple red text', (tester) async {
    // await loadAppFonts();

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: _devicesPhones)
      ..addScenario(widget: createApp(buildSimpleTextcreen()));

    await tester.pumpDeviceBuilder(builder);

    // await tester.pumpWidget(createApp(buildSimpleTextcreen()));

    await screenMatchesGolden(tester, 'simple_red_text');
  });
}

Widget createApp(Widget child) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Scaffold(body: Center(child: child)),
  );
}

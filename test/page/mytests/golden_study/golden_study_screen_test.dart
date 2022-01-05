import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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

    // final builder = DeviceBuilder()
    //   ..overrideDevicesForAllScenarios(devices: _devicesPhones)
    //   ..addScenario(widget: createApp(buildSimpleTextcreen()));

    // await tester.pumpDeviceBuilder(builder);

    // // await tester.pumpWidget(createApp(buildSimpleTextcreen()));

    // await screenMatchesGolden(tester, 'simple_red_text');

    await testPhoneScenarios(
      tester,
      'lixo1',
      ThemeMode.light,
      buildSimpleTextcreen(),
    );
  });
}

Future<void> testPhoneScenarios(
  WidgetTester tester,
  String name,
  ThemeMode themeMode,
  Widget widget, {
  CustomPump? customPump,
}) async {
  return _testDeviceScenarios(
    tester,
    name,
    themeMode,
    widget,
    _devicesPhones,
    forceSmallScreenTheme: true,
    customPump: customPump,
  );
}

Future<void> _testDeviceScenarios(
  WidgetTester tester,
  String name,
  ThemeMode themeMode,
  Widget widget,
  List<Device> devices, {
  bool forceSmallScreenTheme = true,
  CustomPump? customPump,
}) async {
  String suffix;
  switch (themeMode) {
    case ThemeMode.system:
      throw Exception('Theme mode must be light or dark');
    case ThemeMode.light:
      suffix = 'light';
      break;
    case ThemeMode.dark:
      suffix = 'dark';
      break;
  }

  final builder = DeviceBuilder()
    ..overrideDevicesForAllScenarios(devices: devices)
    ..addScenario(widget: createApp(buildSimpleTextcreen()));
  await tester.pumpDeviceBuilder(builder);

  await screenMatchesGolden(tester, '${name}_$suffix', customPump: customPump);
}

Widget createApp(Widget child) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Scaffold(body: Center(child: child)),
  );
}

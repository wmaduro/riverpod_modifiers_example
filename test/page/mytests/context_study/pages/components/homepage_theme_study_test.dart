import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/myapp_context_study.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/pages/components/my_button.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/pages/home_bosta1.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/pages/homepage_theme_study.dart';

Future<void> _buildAapp(WidgetTester tester, Widget widget) async {
  await tester.pumpWidget(MaterialApp(
    home: widget,
  ));
}

//maduro
void main() {
  testWidgets(
    'check if text will change after click correctly',
    (tester) async {
      //maduro 01
      
      // await tester.pumpWidget(
      //   ProviderScope(
      //     child: MyAppContextStudy(),
      //   ),
      // );

      // await tester.pumpWidget(
      //   HomeBosta1(),
      // );

      await _buildAapp(
        tester,
        HomeBosta1(),
      );

      expect(
        find.text('init'),
        findsOneWidget,
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(
        find.text('clicked'),
        findsOneWidget,
      );
    },
    // skip: false,
  );

  //  testWidgets(
  //   'lixo2',
  //   (WidgetTester tester) async {
  //     // await tester.pumpWidget(buildNavigationButton(path: '/lixo'));
  //     await tester.pumpWidget(ProviderScope(child: MyAppContextStudy()));
  //     // await tester.pumpWidget(HomePageContextStudy());

  //     // expect(find.widgetWithText(ElevatedButton, 'lixo page'), findsOneWidget);

  //     expect(
  //       find.widgetWithText(
  //         Text,
  //         'bosta',
  //       ),
  //       findsOneWidget,
  //     ); //fail
  //     // expect(find.byType(Text), findsOneWidget); //ok
  //     // expect(find.text('bosta'), findsOneWidget); // ok

  //     // tester.tap(find.widgetWithText(Text, 'Update'));

  //     expect(true, true);
  //   },
  //   // skip: false,
  // );
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/theme_provider.dart';

import 'pages/homepage_test_study.dart';

import 'pages/lixopage_test_sutdy.dart';
import 'pages/login_widget.dart';

final myLogger = Logger();

// myLogger.d();
final myPrint = (String string) => {print(string)};

class MyAppTestStudy extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    myLogContext(context, this);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeDataNotifierProvider),
      initialRoute: '/login',
      routes: {
        // '/': (context) => HomePageTestStudy(),
        '/login': (context) => loginPage,
        '/lixo': (context) => LixoPageTestStudy(),
      },
    );
  }
}

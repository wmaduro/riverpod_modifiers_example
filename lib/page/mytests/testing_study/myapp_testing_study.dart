import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/theme_provider.dart';

import 'pages/login_page_testing_study.dart';

import 'pages/lixo_page_testing_sutdy.dart';
import 'pages/login_widget.dart';

final myLogger = Logger();

// myLogger.d();
final myPrint = (String string) => {print(string)};

class MyAppTestingStudy extends ConsumerWidget {
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
        '/lixo': (context) => LixoPageTestingStudy(),
      },
    );
  }
}

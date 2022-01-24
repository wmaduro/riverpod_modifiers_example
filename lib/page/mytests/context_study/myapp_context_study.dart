import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/lixopage_context_sutdy.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/theme_provider.dart';

import 'homepage_theme_study.dart';

final myLogger = Logger();

// myLogger.d();
final myPrint = (String string) => {print(string)};

class MyAppContextStudy extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ref.watch(themeDataNotifierProvider),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePageContextStudy(),
        '/lixo': (context) => LixoPageContextStudy(),
      },
    );
  }
}

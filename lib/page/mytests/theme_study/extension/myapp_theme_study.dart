import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/homepage_theme_study.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/theme_provider.dart';

final myLogger = Logger();

// myLogger.d();
final myPrint = (String string) => {print(string)};

class MyAppThemeStudy extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeDataNotifierProvider),
      home: HomePageThemeStudy(),
    );
  }
}

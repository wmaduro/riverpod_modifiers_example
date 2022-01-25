import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/extenstion/build_context_extension.dart';

extension TextThemeExtension on TextTheme {
  TextStyle? get myHeadline4 {
    return headline4?.copyWith(
      color: Colors.red,
    );
  }
}

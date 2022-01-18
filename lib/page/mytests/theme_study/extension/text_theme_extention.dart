import 'package:flutter/material.dart';

extension TextThemeExtentions on TextTheme {
  TextStyle get textStyleMaduro => TextStyle(
        fontSize: 25,
        color: Colors.red,
      );
  TextStyle get headline1X => TextStyle(
        fontSize: 25,
        color: Colors.green,
      );
  TextStyle get headline1x2 => headline1X.copyWith(
        fontSize: 15,
      );

  TextStyle? get headlineBlue => headline1?.copyWith(
        color: Colors.blue,
      );
}

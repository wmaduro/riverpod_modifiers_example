import 'package:flutter/material.dart';

extension ThemeExtension on ThemeData {
  TextStyle get textStyleMaduro => TextStyle(
        fontSize: 25,
        color: Colors.red,
      );
}

final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: TextTheme(
  headline6: TextStyle(fontSize: 30),
));

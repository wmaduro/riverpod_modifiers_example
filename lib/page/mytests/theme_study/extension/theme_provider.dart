import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeDataNotifier extends StateNotifier<ThemeData> {
  ThemeDataNotifier(ThemeData state) : super(state);

  bool get isDarkMode => state == MyThemes.darkThemeData; //ThemeData.dark();

  void toggleTheme() {
    state = state != MyThemes.darkThemeData ? MyThemes.darkThemeData : MyThemes.lightThemeData;
  }
}

final themeDataNotifierProvider = StateNotifierProvider<ThemeDataNotifier, ThemeData>((ref) {
  return ThemeDataNotifier(MyThemes.darkThemeData);
});

class MyThemes {
  static final darkThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.amber[800],
  );

  static final lightThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme().copyWith(
      headline1: TextStyle(
        fontSize: 20,
        color: Colors.redAccent,
      ),
    ),
  );
}

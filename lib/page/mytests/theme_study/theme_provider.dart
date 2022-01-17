import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//---This to switch theme from Switch button----
// class ThemeModeNotifier extends StateNotifier<ThemeMode> {
//   ThemeModeNotifier(ThemeMode state) : super(state);

//   ThemeMode themeMode = ThemeMode.dark;

//   bool get isDarkMode => themeMode == ThemeMode.dark;

//   void toggleTheme(bool isOn) {
//     themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
//   }
// }

// final themeModeNotifierProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
//   return ThemeModeNotifier(ThemeMode.light);
// });

class ThemeDataNotifier extends StateNotifier<ThemeData> {
  ThemeDataNotifier(ThemeData state) : super(state);

  bool get isDarkMode => state == ThemeData.dark();

  void toggleTheme() {
    state = state != ThemeData.dark() ? ThemeData.dark() : ThemeData.light();
  }
}

final themeDataNotifierProvider = StateNotifierProvider<ThemeDataNotifier, ThemeData>((ref) {
  return ThemeDataNotifier(ThemeData.dark());
});
//---------------Themes settings here-----------
// class MyThemes {
//   //-------------DARK THEME SETTINGS----
//   static final darkTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.black45,
//     // colorScheme:  ColorScheme.dark(),
//   );

//   //-------------light THEME SETTINGS----
//   static final lightTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     //colorScheme:  ColorScheme.light(),
//   );
// }

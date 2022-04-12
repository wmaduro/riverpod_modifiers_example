import 'package:flutter/material.dart';

class AppTextThemeFields {
  final TextStyle? campo1;
  final TextStyle? campo2;

  const AppTextThemeFields({this.campo1, this.campo2});
  factory AppTextThemeFields.empty() {
    return const AppTextThemeFields();
  }
}

extension AppBlackTextThemeExtension on Typography {
  static final Map<TextTheme, AppTextThemeFields> _own = {};

  void addBlackThemeFields(AppTextThemeFields own) {
    // Theme.of() and thus platformThemeData builder ref wil be anew instance so I need to
    // use internal fields which are no deep copied but simply a reference is copied. That
    // also means that when I do use the Theme.of() refs that new instance will thus have my added fields.
    //
    // A whole betern than implementing the ThemeData or other interfaces and thus directly
    // coupling to any SDK changes ocurring per each SDK update.
    _own[this.black] = own;
  }

  // ignore: avoid_init_to_null
  static AppTextThemeFields? empty = null;

  AppTextThemeFields own() {
    final o = _own[this.black];
    if (o == null) {
      empty ??= AppTextThemeFields.empty();
    }
    return o!;
  }
}

TextStyle campo1TS = TextStyle(
  debugLabel: "Black Display Large",
  // fontFamily: GoogleFonts.notoSans().fontFamily,
  color: Colors.black54,
  decoration: TextDecoration.none,
);

Typography appTypography = Typography(
  // black: appBlackTextTheme,
  // white: appWhiteTextTheme,
  // englishLike: appEnglishLikeTextTheme,
  // tall: appTallTextTheme,
  // dense: appDenseTextTheme,
)..addBlackThemeFields(
    AppTextThemeFields(
      campo1: campo1TS,
    ),
  );

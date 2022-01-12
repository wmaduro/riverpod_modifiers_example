import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'homepage_appbar_responsiveness.dart';

final myLogger = Logger();

class MyAppAppBarResponseive extends StatelessWidget {
  static final String title = 'Riverpod Example';
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.black,
          primarySwatch: Colors.red,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white70,
          ),
        ),
        home: HomePageAppBarResponsiveness(),
      );
}

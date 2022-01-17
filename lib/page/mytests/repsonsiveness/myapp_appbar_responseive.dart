import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'appbar_responsiveness/homepage_appbar_responsiveness.dart';
import 'flexible/homepage_lixo.dart';

final myLogger = Logger();

// myLogger.d();
final myPrint = (String string) => {print(string)};

class MyAppAppBarResponseive extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
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
        // home: HomePageLixo(),
      );
}

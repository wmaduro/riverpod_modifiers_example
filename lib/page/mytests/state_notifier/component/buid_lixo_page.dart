import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/resolution/resolution_study.dart';

import 'inheritance/my_component.dart';
import 'inheritance/my_component2.dart';

final buildLixoPage = (BuildContext context) =>
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      // MyComponent(),
      // SizedBox(
      //   height: 50,
      // ),
      // MyComponent2(),
      ResolutionStudyComponent()
    ]);

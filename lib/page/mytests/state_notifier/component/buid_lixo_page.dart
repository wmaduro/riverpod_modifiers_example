import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/extension_study.dart';

final buildLixoPage = () => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // MyComponent(),
        // SizedBox(
        //   height: 50,
        // ),
        // MyComponent2(),
        // ResolutionStudyComponent(),
        ExtensionStudy(text: 'mytext'),
      ],
    );

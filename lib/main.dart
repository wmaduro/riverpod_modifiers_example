import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/myapp_lixaiada.dart';

import 'page/mytests/context_study/myapp_context_study.dart';
import 'page/mytests/repsonsiveness/myapp_appbar_responseive.dart';
import 'page/mytests/testing_study/myapp_testing_study.dart';
import 'page/mytests/theme_study/extension/myapp_theme_study.dart';

void main() => runApp(
      ProviderScope(
        child: MyAppTestingStudy(),
        // child: MyAppContextStudy(),
        // child: MyAppThemeStudy(),
        // child: MyAppAppBarResponseive(),
        // child: MyAppLixaiada(),
      ),
    );

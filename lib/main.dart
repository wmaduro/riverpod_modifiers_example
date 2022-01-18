import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'page/mytests/theme_study/extension/myapp_theme_study.dart';

void main() => runApp(
      ProviderScope(
        child: MyAppThemeStudy(),
        // child: MyAppAppBarResponseive(),
      ),
    );

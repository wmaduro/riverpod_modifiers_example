import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/theme_provider.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/extension/text_theme_extention.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class HomePageThemeStudy extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final themeDataNotifier = ref.read(themeDataNotifierProvider.notifier);
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'headlineBlue',
              style: theme.textTheme.headlineBlue,
            ),
            Text(
              'headeline1',
              style: theme.textTheme.headline1,
            ),
            Text(
              'headline1X',
              style: theme.textTheme.headline1X,
            ),
            Text(
              'headline1X2',
              style: theme.textTheme.headline1x2,
            ),
            Text(
              'textStyleMaduro',
              style: theme.textTheme.textStyleMaduro,
            ),
            ButtonWidget(
              text: 'Theme',
              onClicked: () {
                themeDataNotifier.toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}

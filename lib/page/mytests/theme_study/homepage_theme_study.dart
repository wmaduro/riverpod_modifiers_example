import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/theme_provider.dart';
import 'package:riverpod_modifiers_example/page/mytests/theme_study/theme_utils.dart';
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
              'text1',
              style: theme.textTheme.headline1,
            ),
            Text(
              'text2',
              style: theme.textStyleMaduro,
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

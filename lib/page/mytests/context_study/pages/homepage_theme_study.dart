import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/pages/components/my_button.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class HomePageContextStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    myLogContext(context, this);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'snake bar',
              onClicked: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            buildNavigationButton(
              context: context,
              path: 'lixo',
            ),
            buildNavigationButton(
              context: context,
              path: 'lixo2',
            ),
          ],
        ),
      ),
    );
  }
}

final snackBar = SnackBar(
  content: const Text('Yay! A SnackBar!'),
  action: SnackBarAction(
    label: 'Undo',
    onPressed: () {
      // Some code to undo the change.
    },
  ),
);

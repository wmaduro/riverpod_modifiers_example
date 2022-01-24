import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class HomePageContextStudy extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'CONTEXT TEXT',
              onClicked: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            _buildButtonGotoLixoPage(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildButtonGotoLixoPage(BuildContext context) {
  return ButtonWidget(
    text: 'Lixo Page',
    onClicked: () {
      Navigator.pushNamed(context, '/lixo');
    },
  );
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            _buildButtonGotoLixoPage(context, 'lixo'),
            _buildButtonGotoLixoPage(context, 'lixo2'),
          ],
        ),
      ),
    );
  }
}

Widget _buildButtonGotoLixoPage(BuildContext context, String path) {
  return ButtonWidget(
    text: '$path page',
    onClicked: () {
      Navigator.pushNamed(context, '/$path');
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

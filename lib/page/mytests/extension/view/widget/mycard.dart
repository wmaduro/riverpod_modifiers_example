import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String textButton;
  final Function(String) callback;
  // final notifier;

  //  final notifier = context.read(extensionProvider.notifier);

  MyCard({
    required this.title,
    required this.textButton,
    required this.callback,
  }); //: notifier = _getNotifier();

  // static _getNotifier() {
  //   //context.read(extensionProvider.notifier)
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('$title'),
            _button(),
          ],
        ),
      ),
    );
  }

  _button() {
    return ButtonWidget(
        text: textButton,
        onClicked: () {
          callback(title);

          // notifier.setState('text');
        });
  }
}

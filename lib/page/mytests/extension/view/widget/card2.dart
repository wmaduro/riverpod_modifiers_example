import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class Card2 extends StatelessWidget {
  final String textButton;

  const Card2({required this.textButton}) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('$textButton'),
            _button(context),
          ],
        ),
      ),
    );
  }

  _button(BuildContext context) {
    return ButtonWidget(
      text: "button2",
      onClicked: () {
        context.read(extensionProvider.notifier).setState('test card2');
      },
    );
  }
}

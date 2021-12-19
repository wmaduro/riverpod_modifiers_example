import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class Card1 extends StatelessWidget {
  final String textButton;

  const Card1({required this.textButton}) : super();

  @override
  Widget build(BuildContext context) {
    final notifier = context.read(extensionProvider.notifier);

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('$textButton'),
            _button(context, notifier),
          ],
        ),
      ),
    );
  }

  _button(contextn, notifier) {
    return ButtonWidget(
      text: "button1",
      onClicked: () {
        notifier.setState('test card1');
      },
    );
  }
}

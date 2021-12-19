import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class Card1 extends StatelessWidget {
  final String textButton;

  const Card1({required this.textButton}) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Expanded(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('$textButton'),
            _button(context),
          ],
        ),
      )),
    );
  }

  _button(BuildContext context) {
    return ButtonWidget(
      text: "button1",
      onClicked: () {},
    );
  }
}

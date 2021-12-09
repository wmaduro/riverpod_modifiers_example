import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class MyButtonAndTextComponenetStateLess extends StatelessWidget {
  late String textButton = "inc1..";
  int counter = 0;

  increment() {
    counter++;
  }

  void incrementCounter() {
    increment();
  }

  @override
  Widget build(BuildContext context) {

    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: textButton,
          onClicked: () {
            incrementCounter();
          }),
      Text('text: ${counter}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class MyButtonAndTextComponent extends StatefulWidget {
  MyButtonAndTextComponent({Key? key}) : super(key: key);
  int counter = 0;

  increment() {
    counter++;
  }

  var textButton = "stateful 1";

  @override
  _MyButtonAndTextComponentState createState() =>
      _MyButtonAndTextComponentState();
}

class _MyButtonAndTextComponentState extends State<MyButtonAndTextComponent> {
  void incrementCounter() {
    widget.increment();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: widget.textButton,
          onClicked: () {
            incrementCounter();
          }),
      Text('stateless text: ${widget.counter}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

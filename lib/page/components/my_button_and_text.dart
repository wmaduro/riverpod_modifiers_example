import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class MyButtonAndTextComponenet extends StatefulWidget {
  MyButtonAndTextComponenet({Key? key}) : super(key: key);
  int counter = 0;

  increment() {
    counter++;
  }

  String _textButton = 'Inc 1';
  setTextButton(String text) {
    _textButton = text;
  }

  @override
  _MyButtonAndTextComponenetState createState() =>
      _MyButtonAndTextComponenetState();
}

class _MyButtonAndTextComponenetState extends State<MyButtonAndTextComponenet> {
  void incrementCounter() {
    widget.increment();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: widget._textButton,
          onClicked: () {
            incrementCounter();
          }),
      Text('text: ${widget.counter}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

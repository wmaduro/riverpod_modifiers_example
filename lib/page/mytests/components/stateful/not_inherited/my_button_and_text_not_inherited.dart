import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class MyButtonAndTextComponentNotInherited extends StatefulWidget {
  final String? textButton;
  final int Function(int)? increment;
  final Text Function(int)? buildTextComonent;

  MyButtonAndTextComponentNotInherited({
    this.textButton,
    this.increment,
    this.buildTextComonent,
  });

  @override
  _MyButtonAndTextComponentNotInheritedState createState() =>
      _MyButtonAndTextComponentNotInheritedState();
}

class _MyButtonAndTextComponentNotInheritedState
    extends State<MyButtonAndTextComponentNotInherited> {
  int value = 0;

  void incrementCounter() {
    if (widget.increment != null) {
      value = widget.increment!(value);
    }
    setState(() {});
  }

  Text buildTextComponent() {
    if (widget.buildTextComonent == null) {
      return Text('default: $value');
    } else {
      return widget.buildTextComonent!(value);
    }
  }

  ButtonWidget buildButtonComponent() {
    return ButtonWidget(
        text: widget.textButton ?? 'default',
        onClicked: () {
          incrementCounter();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...newElement(),
      buildButtonComponent(),
      buildTextComponent(),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

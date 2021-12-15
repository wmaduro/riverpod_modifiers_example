import 'package:flutter/material.dart';

import 'my_component.dart';

class MyComponent2 extends MyComponent {
  @override
  Widget buildButton(notifier) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {},
      child: Text('TextButton'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class MyCard2 extends StatelessWidget {
  final String title;
  final String textButton;
  final Function(String) callback;

  MyCard2({
    required this.title,
    required this.textButton,
    required this.callback,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
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
        });
  }
}

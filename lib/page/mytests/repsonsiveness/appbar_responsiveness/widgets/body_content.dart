import 'package:flutter/material.dart';

import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'components/box_component.dart';

final bodyContent = ({
  required String buttonText,
  required Function() onClick,
  required String contentText,
}) =>
    _laytout1(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonWidget(
            text: buttonText,
            onClicked: onClick,
          ),
          BoxComponent(
            content: Text(contentText),
          ),
        ],
      ),
    );

Widget _laytout1({required Widget child}) {
  return Expanded(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: child,
      ),
    ),
  );
}

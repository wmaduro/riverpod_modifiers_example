import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/appbar_responsiveness/widgets/widget/box_component.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

final bodyContent = ({
  required String buttonText,
  required Function() onClick,
  required String contentText,
}) =>
    _center(
      child: Row(
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
          Text('maduro'),
        ],
      ),
    );

Widget _center({required Widget child}) {
  return Center(
    child: child,
  );
}

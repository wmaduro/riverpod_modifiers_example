import 'package:flutter/material.dart';

import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'components/box_component.dart';

final bodyContent = ({
  required String buttonText,
  required Function() onClick,
  required String contentText,
}) =>
    _laytout2(
      child: _content(
        buttonText,
        onClick,
        contentText,
      ),
    );

Column _content(
  String buttonText,
  onClick(),
  String contentText,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ..._contentDefault(
        buttonText,
        onClick,
        contentText,
      ),
      ..._contentLixo(),
    ],
  );
}

List<Widget> _contentLixo() {
  List<Widget> list = [];
  List.generate(
    70,
    (index) => list.add(
      Text('teste -> $index'),
    ),
  );

  return list;
}

List<Widget> _contentDefault(
  String buttonText,
  onClick(),
  String contentText,
) {
  return [
    ButtonWidget(
      text: buttonText,
      onClicked: onClick,
    ),
    BoxComponent(
      content: Text(contentText),
    ),
  ];
}

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

Widget _laytout2({required Widget child}) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Center(
      child: child,
    ),
  );
}

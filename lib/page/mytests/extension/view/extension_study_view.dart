import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'widget/card1.dart';
import 'widget/card2.dart';
import 'widget/header.dart';

class ExtensionStudyscreen extends StatelessWidget {
  final String text;
  const ExtensionStudyscreen({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _head(),
        _getContent(),
        _leaveHere(),
      ],
    );
  }

  _leaveHere() {
    return ButtonWidget(
      text: "leave",
      onClicked: () {},
    );
  }

  _head() {
    return Header();
  }

  _getContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text('text extension'),
          Card1(
            textButton: 'card1...',
          ),
          Card2(
            textButton: 'card2...',
          ),
        ],
      ),
    );
  }
}

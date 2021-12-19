import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/card1.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/header.dart';

import 'card2.dart';

class ExtensionStudy extends StatelessWidget {
  final String text;
  const ExtensionStudy({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _head(),
        _getContent(),
      ],
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/view/widget/mycard2.dart';

import 'widget/card1.dart';

import 'widget/header.dart';
import 'widget/header2.dart';
import 'widget/mycard.dart';

class ExtensionStudyscreen extends StatelessWidget {
  final String text;
  const ExtensionStudyscreen({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    print('resenhando a tela interia...');
    return Column(
      children: [
        _buildHead1(),
        _buildHead2(),
        _buildCards(),
      ],
    );
  }

  _buildHead1() {
    return Header();
  }

  Widget _buildHead2() {
    return Consumer(builder: (_, ref, __) {
      String s = ref.watch(extensionProvider);
      return Header2(s);
    });
  }

  _buildCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // Text('text extension'),
          MyCard(
            textButton: 'mycard1',
            title: 'mycard1',
            callback: (value) {
              print('callback from mycard1');
            },
          ),
          MyCard2(
            textButton: 'mycard2',
            title: 'mycard2',
            callback: (value) {
              _callFunction();
            },
          ),

          Card1(
            textButton: 'card1...',
          ),
        ],
      ),
    );
  }

  _callFunction() {}
}

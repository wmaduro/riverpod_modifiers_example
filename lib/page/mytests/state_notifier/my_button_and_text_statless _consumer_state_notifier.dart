import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'counter/couter_notifier.dart';

class MyButtonAndTextComponenetStateLessConsumerStateNotifier
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = context.read(counterProvider.notifier);
    return Column(children: [
      ..._buildHeader(),
      _buildButton(notifier),
      _buildText(),
    ]);
  }

  List<Widget> _buildHeader() {
    return [
      Text('Header'),
    ];
  }

  Widget _buildButton(notifier) {
    return ButtonWidget(
        text: "StateLessConsumer",
        onClicked: () {
          notifier.increment(5);
        });
  }

  Widget _buildText() {
    return Consumer(
      builder: (context, watch, child) =>
          Text('text: ${watch(counterProvider)}'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'counter/counter_notifier.dart';

class MyButtonAndTextComponenetStateLessStateNotifier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = context.read(counterProvider);
    final notifier = context.read(counterProvider.notifier);

    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: "StateLessStateNotifier",
          onClicked: () {
            notifier.setCounter(2);
          }),
      Text('text: ${counter}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

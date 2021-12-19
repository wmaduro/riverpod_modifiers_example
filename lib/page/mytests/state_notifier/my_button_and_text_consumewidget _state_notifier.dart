import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'counter/counter_notifier.dart';

class MyButtonAndTextComponenetConsumerWidgetStateNotifier
    extends ConsumerWidget {
  @override
  Widget build(context, watch) {
    // final counter = context.read(counterProvider);
    final notifier = context.read(counterProvider.notifier);

    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: "ConsumerWidget",
          onClicked: () {
            notifier.setCounter(1);
          }),
      Text('text: ${watch(counterProvider)}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

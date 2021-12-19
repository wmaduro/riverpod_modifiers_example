import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'counter/counter_notifier.dart';

class MyButtonAndTextComponenetConsumerWidgetStateNotifier
    extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    // final counter = context.read(counterProvider);
    final notifier = ref.read(counterProvider.notifier);

    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: "ConsumerWidget",
          onClicked: () {
            notifier.setCounter(1);
          }),
      Text('text: ${ref.watch(counterProvider)}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

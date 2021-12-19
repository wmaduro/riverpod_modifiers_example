import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'counter/counter_notifier.dart';

class MyButtonAndTextComponenetStateLessStateNotifier extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final counter = ref.read(counterProvider);
    final notifier = ref.read(counterProvider.notifier);

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

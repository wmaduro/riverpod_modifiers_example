import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class MyButtonAndTextComponenetStateLessProvider extends ConsumerWidget {
  late String textButton = "provider";

  @override
  Widget build(context, ref) {
    final provider = ref.watch(counterProvider.state);
    final counter = provider.state.toString();

    return Column(children: [
      ...newElement(),
      ButtonWidget(
          text: textButton,
          onClicked: () {
            provider.state++;
          }),
      Text('provider: ${counter}'),
    ]);
  }

  List<Widget> newElement() {
    return [];
  }
}

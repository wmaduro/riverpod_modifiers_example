import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import '../../counter/counter_notifier.dart';

// void _getConsumer(
//     AutoDisposeStateNotifierProvider<CounterNotifier, int> notifierProvider) {
//   final a = Consumer(builder: (context, ref, _) {
//     final state = ref.watch(notifierProvider);
//     final notifier = ref.read(notifierProvider.notifier);
//     return Text('');
//   });
// }

final notifier = Provider((ref) {
  return ref.read(counterProvider.notifier);
});

class MyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ..._buildHeader(),
      buildButton(notifier),
      _buildText(),
    ]);
  }

  List<Widget> _buildHeader() {
    return [
      Text('Header'),
    ];
  }

  Widget buildButton(notifier) {
    return ButtonWidget(
        text: "StateLessConsumer",
        onClicked: () {
          notifier.setCounter(1);
        });
  }

  // int Function(int) increment = (value) {
  //     int
  // };

  Widget _buildText() {
    return Consumer(
      builder: (context, ref, child) =>
          Text('text: ${ref.watch(counterProvider)}'),
    );
  }
}
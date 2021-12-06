import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_modifiers_example/widget/text_widget.dart';

final numberProvider = Provider<int>((ref) { return 999;});

final textProvider = Provider<Widget>((_) => Text('teste'));

// class ProviderPage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, watch) {
//     final number = watch(numberProvider).toString();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Provider'),
//       ),
//       body: Center(child: TextWidget(number)),
//     );
//   }
// }

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Column(children: [
          _myConsumer(),
          _myConsumer(),
          _myConsumer(),
          _myConsumer(),
          _consumerText(),
        ],),
      ),
    );
  }

  _consumerText(){
    return Consumer(
      builder: (_, ref, __) {
        Widget widgetText = ref.watch(textProvider);
        return widgetText;
      },
    );
  }

  _myConsumer(){
    return Consumer(
      builder: (context, ref, child) {
        final number = ref.watch(numberProvider).toString();

        return TextWidget(number);
      },
    );
  }
}

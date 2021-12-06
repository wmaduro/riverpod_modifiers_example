import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/text_widget.dart';

// StateProvider.autoDispose: destroys state if no-longer listened
final stateProvider = StateProvider<int>((ref) => 0);

class StateProviderPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final counter = ref.watch(stateProvider).toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('StateProvider'),
      ),
      body: Center(child: TextWidget(counter)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // provider.state++;
          final provider = ref.read(stateProvider.state);
          provider.state++;
        },
      ),
    );
  }
}

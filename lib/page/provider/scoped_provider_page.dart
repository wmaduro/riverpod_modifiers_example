import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/text_widget.dart';

final scopedProvider = Provider<int>((ref) => throw UnimplementedError());

class ScopedProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('ScopedProvider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildScoped(42),
              buildScoped(90),
              buildScoped(null), // throws exception
            ],
          ),
        ),
      );

  Widget buildScoped(int? value) {
    final consumer = Consumer(
      builder: (context, ref, child) {
        final number = ref.watch(scopedProvider).toString();

        return TextWidget(number);
      },
    );

    return value == null
        ? consumer
        : ProviderScope(
            overrides: [
              scopedProvider.overrideWithValue(value),
            ],
            child: consumer,
          );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/widget/text_widget.dart';

// StreamProvider.autoDispose: destroys state if no-longer listened
final streamProvider = StreamProvider<String>((ref) => Stream.periodic(
      Duration(milliseconds: 2000),
      (count) => '$count',
    ));

class StreamProviderPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) => Scaffold(
        appBar: AppBar(
          title: Text('StreamProvider'),
        ),
        body: Center(child: buildStreamWhen(ref)),
        // Center(child: buildStreamBuilder(ref)),
      );

  Widget buildStreamWhen(ref) {
    AsyncValue<String> _streamProvider = ref.watch(streamProvider);

    return _streamProvider.when(
      data: (value) => TextWidget(value),
      loading: () => CircularProgressIndicator(),
      error: (e, stack) => TextWidget('Error: $e'),
    );
  }

  // Widget buildStreamBuilder(watch) {
  //   final stream = watch(streamProvider.stream);

  //   return StreamBuilder<String>(
  //     stream: stream,
  //     builder: (context, snapshot) {
  //       switch (snapshot.connectionState) {
  //         case ConnectionState.waiting:
  //           return CircularProgressIndicator();
  //         default:
  //           if (snapshot.hasError) {
  //             return TextWidget('Error: ${snapshot.error}');
  //           } else {
  //             final counter = snapshot.data;

  //             return TextWidget(counter);
  //           }
  //       }
  //     },
  //   );
  // }
}

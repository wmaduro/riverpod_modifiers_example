import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';

class Header extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Header1: ${ref.watch(extensionProvider)}'),
          ],
        ),
      ),
    );
  }
}

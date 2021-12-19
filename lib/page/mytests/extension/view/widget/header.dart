import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/extension/controller/extension_provider.dart';

class Header extends ConsumerWidget {
  @override
  Widget build(context, watch) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Header: ${watch(extensionProvider)}'),
          ],
        ),
      ),
    );
  }
}

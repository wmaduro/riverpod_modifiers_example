import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final extensionProvider =
    StateNotifierProvider.autoDispose<ExtensionNotifier, String>((ref) {
  return ExtensionNotifier('init...');
});

class ExtensionNotifier extends StateNotifier<String> {
  ExtensionNotifier(String state) : super(state);

  setState(String string) {
    state = '$string - ${Random().nextInt(100)}';
  }

  @override
  void dispose() {
    print('disposeeeee.........');
    super.dispose();
  }
}

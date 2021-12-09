import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier(1);
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(int state) : super(state);

  int getCounter() {
    return state;
  }

  increment(int factor) {
    state+=factor;
  }
}

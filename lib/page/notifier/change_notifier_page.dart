import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';
import 'package:riverpod_modifiers_example/widget/text_widget.dart';

class Car {
  int speed;
  Car({
    this.speed = 120,
  });
}

class CarNotifier extends ChangeNotifier {
  Car _car = Car();

  int speed = 120;

  void increase() {
    speed += 5;
    _car.speed+=10;

    notifyListeners();
  }

  void hitBreak() {
    speed = max(0, speed - 30);
    _car.speed= max(0, speed - 20);
    notifyListeners();
  }

  // @override
  // void dispose() {}
}

final carProvider = ChangeNotifierProvider<CarNotifier>((ref) => CarNotifier());

class ChangeNotifierPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final _carProvider = watch(carProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget('Speed: ${_carProvider.speed}'),
            TextWidget('Car Speed: ${_carProvider._car.speed}'),
            const SizedBox(height: 8),
            buildButtons(context, _carProvider),
          ],
        ),
      ),
    );
  }

  Widget buildButtons(BuildContext context, CarNotifier car) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            text: 'Increase +5',
            onClicked: context.read(carProvider).increase,
          ),
          // car.increase: not efficient
          // => button rebuilds everytime if car state changes
          const SizedBox(width: 12),
          ButtonWidget(
            text: 'Hit Brake -30',
            onClicked: context.read(carProvider).hitBreak,
          ),
        ],
      );
}

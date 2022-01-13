import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/appbar_responsiveness/widgets/appbar_content.dart';
import 'package:riverpod_modifiers_example/page/mytests/appbar_responsiveness/widgets/body_content.dart';

import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'myapp_appbar_responseive.dart';

class HomePageAppBarResponsiveness extends StatefulWidget {
  @override
  _HomePageAppBarResponsivenessState createState() => _HomePageAppBarResponsivenessState();
}

class _HomePageAppBarResponsivenessState extends State<HomePageAppBarResponsiveness> {
  String _buttonText = 'init...';
  double _appBarHeight = 100;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  _changeAppbarHeight() {
    setState(() {
      final randomValue = Random().nextInt(100) + 100;
      _appBarHeight = randomValue.toDouble();
      _buttonText = 'random $randomValue';
    });
  }

  _startTimer() async {
    Timer.periodic(Duration(seconds: 2), (timer) {
      _changeAppbarHeight();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContentFactory(_appBarHeight).appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              bodyContent(_buttonText),
            ],
          ),
        ),
      ),
    );
  }
}

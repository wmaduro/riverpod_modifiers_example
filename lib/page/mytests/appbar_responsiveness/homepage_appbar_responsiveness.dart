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
  String _mainText = " ";

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  _changeAppbarHeight() {
    final maxTextLength = 260;
    setState(() {
      final randomValue = Random().nextInt(100) + 100;
      _mainText = _mainText.length > maxTextLength ? "" : ' | teste ----------- $_mainText ${randomValue.toDouble()}';
      _mainText = '(${_mainText.length}) $_mainText';
      _buttonText = 'random $randomValue';
    });
  }

  _startTimer() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _changeAppbarHeight();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContentFactory(_mainText).appBar,
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

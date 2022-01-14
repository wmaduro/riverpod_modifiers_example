import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/appbar_responsiveness/widgets/appbar_content.dart';
import 'package:riverpod_modifiers_example/page/mytests/appbar_responsiveness/widgets/body_content.dart';

class HomePageAppBarResponsiveness extends StatefulWidget {
  @override
  _HomePageAppBarResponsivenessState createState() => _HomePageAppBarResponsivenessState();
}

class _HomePageAppBarResponsivenessState extends State<HomePageAppBarResponsiveness> {
  String _buttonText = 'init...';
  String _headerText = "";
  String _bodyText = "";

  @override
  void initState() {
    super.initState();
    // _startTimer();
  }

  _refreshHeaderText(double value) {
    final maxTextLength = 160;
    _headerText = _headerText.length > maxTextLength ? "" : ' | teste ---- $_headerText ${value.toDouble()}';
    _headerText = '(${_headerText.length}) $_headerText';
  }

  _refreshButtonText(double value) {
    _buttonText = 'random $value';
  }

  _refreshState() {
    setState(() {
      double randomValue = Random().nextInt(100) + 100;
      _refreshHeaderText(randomValue);
      _refreshButtonText(randomValue);
    });
  }

  _startTimer() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _refreshState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContentFactory(_headerText).appBar,
      body: bodyContent(
        buttonText: _buttonText,
        onClick: this._refreshState,
        contentText: _headerText,
      ),
    );
  }
}

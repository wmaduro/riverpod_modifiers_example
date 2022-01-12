import 'dart:async';
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/appbar_responsiveness/myapp_appbar_responseive.dart';

import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class HomePageAppBarResponsiveness extends StatefulWidget {
  @override
  _HomePageAppBarResponsivenessState createState() => _HomePageAppBarResponsivenessState();
}

class _HomePageAppBarResponsivenessState extends State<HomePageAppBarResponsiveness> {
  double appBarHeight = 200;
  String lixo = 'responsiveness';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  _changeAppbarHeight() {
    setState(() {
      final randomValue = Random().nextInt(100) + 100;
      appBarHeight = randomValue.toDouble();
      lixo = 'bosta $randomValue';
    });
  }

  _startTimer() async {
    Timer.periodic(Duration(seconds: 2), (timer) {
      _changeAppbarHeight();
      // myLogger.d('${timer}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return _responsiveness();
  }

  Widget _responsiveness() {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ButtonWidget(text: lixo, onClicked: () {}),
              buildSimpleTextcreen(),
            ],
          ),
        ),
      ),
    );
  }

  final mainItemSize = 40.0;
  final subItemSize = 20.0;

  SliverAppBar buildSilverAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: _column([
        _mainItem(),
        _subItem(),
      ]),
      // expandedHeight: 200,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: appBarHeight,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: _column([_mainItem(), _subItem()]),
    );
  }

  Widget _expanded(Widget w) {
    return Expanded(
      child: w,
    );
  }

  Widget _column(List<Widget> wList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [...wList],
    );
  }

  bool isNormal = true;

  Widget _mainItem() {
    return _getTextGlobal(_mainContent(), mainItemSize, isNormal);
  }

  Widget _subItem() {
    return _getTextGlobal(_subContent(), subItemSize, isNormal);
  }

  Widget _getTextGlobal(String content, double size, bool isNormal) {
    if (isNormal) {
      return _getText(content, size);
    } else {
      return _getAutoSizeText(content, size);
    }
  }

  Widget _getText(String content, double size) {
    return Text(
      content,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size),
    );
  }

  Widget _getAutoSizeText(String content, double size) {
    return AutoSizeText(
      content,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size),
    );
  }

  String _mainContent() {
    return 'Main Lixooooooooo 11111111111111 rrrrrrrrrrrrr rrrrrrrrrrrrrr rrrrrrrrrrrrrr  pppppppppp ooooooooooooo';
  }

  String _subContent() {
    return 'Sub teste 12345';
  }

  final buildSimpleTextcreen = () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  _SimpleText(content: 'golden'),
        ],
      );
}

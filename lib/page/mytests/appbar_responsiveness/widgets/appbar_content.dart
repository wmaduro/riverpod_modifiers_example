import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/main.dart';

final appBarContentFactory = (String mainText) {
  return _AppBarContent(mainText: mainText);
};

class _AppBarContent {
  final _mainItemSize = 50.0;
  final _subItemSize = 20.0;

  late AppBar _appBar;
  AppBar get appBar => _appBar;

  _AppBarContent({required String mainText}) {
    _appBar = AppBar(
      toolbarHeight: _calculateHeight(),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
        ),
        onPressed: () => {}, //Navigator.of(context).pop(),
      ),
      title: _column([_mainItem(mainText), _subItem()]),
    );
  }

  _calculateHeight() {
    return 300.0;
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

  bool isAutoSizeText = true;

  Widget _mainItem(String mainText) {
    return _getTextGlobal(mainText, _mainItemSize, isAutoSizeText);
  }

  Widget _subItem() {
    return _getTextGlobal(_subContent(), _subItemSize, isAutoSizeText);
  }

  Widget _getTextGlobal(String content, double size, bool isAutoSizeText) {
    if (isAutoSizeText) {
      return _getAutoSizeText(content, size);
    } else {
      return _getText(content, size);
    }
  }

  Widget _getText(String content, double size) {
    return Text(
      content,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size),
    );
  }

  Widget _getAutoSizeText(String content, double size) {
    return AutoSizeText(
      content,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size),
    );
  }

  String _subContent() {
    return 'Sub teste 12345';
  }
}

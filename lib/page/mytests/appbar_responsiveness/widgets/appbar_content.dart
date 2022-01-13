import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

final appBarContentFactory = (double appBarHeigh) {
  return _AppBarContent(appBarHeigh);
};

class _AppBarContent {
  late AppBar _appBar;
  AppBar get appBar => _appBar;

  _AppBarContent(double appBarHeigh) {
    _appBar = AppBar(
      toolbarHeight: appBarHeigh,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
        ),
        onPressed: () => {}, //Navigator.of(context).pop(),
      ),
      title: _column([_mainItem(), _subItem()]),
    );
  }
  final _mainItemSize = 40.0;
  final _subItemSize = 20.0;

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
    return _getTextGlobal(_mainContent(), _mainItemSize, isNormal);
  }

  Widget _subItem() {
    return _getTextGlobal(_subContent(), _subItemSize, isNormal);
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
}

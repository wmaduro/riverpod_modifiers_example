import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class ResolutionStudyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: "resolution1",
      onClicked: () {
        _show(
          'size.width',
          MediaQuery.of(context).size.width.toString(),
        );
        _show(
          'size.height',
          MediaQuery.of(context).size.height.toString(),
        );
        _show(
          'orientation',
          MediaQuery.of(context).orientation.index.toString(),
        );
        _show(
          'devicePixelRatio',
          MediaQuery.of(context).devicePixelRatio.toString(),
        );
        _show(
          'textScaleFactor',
          MediaQuery.of(context).textScaleFactor.toString(),
        );
      },
    );
  }

  _show(String text, String value) {
    print('$text - $value');
  }
}

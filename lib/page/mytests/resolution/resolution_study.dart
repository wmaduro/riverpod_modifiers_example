import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

class ResolutionStudyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._image(context),
        // _button(context),
      ],
    );
  }

  List<Widget> _image(BuildContext context) {
    return [
      // Image.asset(
      //   'assets/alert.png',
      //   width: 100,
      // ),
      Text('----------'),

      Image.asset('assets/10dpi.png'),
      // Image.asset('assets/25dpi.png'),
      // Image.asset('assets/100dpi.png'),
      // Image.asset('assets/1000dpi.png'),

      Text('Text 10'),
      Image.asset('assets/10dpi.png', width: 10),
      // Image.asset('assets/25dpi.png', width: 10),
      // Image.asset('assets/100dpi.png', width: 10),
      // Image.asset('assets/1000dpi.png', width: 10),
      Text('Text 50'),
      Image.asset('assets/10dpi.png', width: 50),
      // Image.asset('assets/25dpi.png', width: 50),
      // Image.asset('assets/100dpi.png', width: 50),
      // Image.asset('assets/1000dpi.png', width: 50),
      Text('Text 100...'),
      Image.asset('assets/10dpi.png', width: 100),
      // Image.asset('assets/25dpi.png', width: 100),
      // Image.asset('assets/100dpi.png', width: 100),
      // Image.asset('assets/1000dpi.png', width: 100),
      // Image.asset('assets/10dpi.png', width: 900),
      // Image.asset('assets/25dpi.png', width: 900),
      // Image.asset('assets/100dpi.png', width: 900),
      // Image.asset('assets/1000dpi.png', width: 900),
    ];
  }

  _button(BuildContext context) {
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

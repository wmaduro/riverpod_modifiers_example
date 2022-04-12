import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';


class ResolutionStudyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSlider(),
        ..._image(context),
        // _button(context),
      ],
    );
  }

  Widget _buildSlider() {
    double currentValue = 1;
    return Slider(
      value: currentValue,
      min:1,
      max: 5,
      divisions: 5,
      onChanged: (double value) {
        currentValue = value;
      },
    );
  }

  List<Widget> _image(BuildContext context) {
    return [
      // Image.asset(
      //   'assets/alert.png',
      //   width: 100,
      // ),
      // Text('----------'),

      // Image.asset('assets/10dpi.png'),
      // Image.asset('assets/25dpi.png'),
      // Image.asset('assets/100dpi.png'),
      // Image.asset('assets/1000dpi.png'),

      // Text('Text 10'),
      // Image.asset('assets/10dpi.png', width: 10),

      // Text('Text 25'),
      // Image.asset('assets/10dpi.png', width: 25),

      // Image.asset('assets/25dpi.png', width: 10),
      // Image.asset('assets/100dpi.png', width: 10),
      // Image.asset('assets/1000dpi.png', width: 10),
      // Text('Text 50'),
      // Image.asset('assets/10dpi.png', width: 50),
      // Image.asset('assets/25dpi.png', width: 50),
      // Image.asset('assets/100dpi.png', width: 50),
      // Image.asset('assets/1000dpi.png', width: 50),

      // Text('Text 100...'),
      // Image.asset('assets/10dpi.png', width: 100),

      // Text('Text 200...'),
      // Image.asset('assets/10dpi.png', width: 200),

      // Image.asset('assets/25dpi.png', width: 100),
      // Image.asset('assets/100dpi.png', width: 100),
      // Image.asset('assets/1000dpi.png', width: 100),
      // Image.asset('assets/10dpi.png', width: 900),
      // Image.asset('assets/25dpi.png', width: 900),
      // Image.asset('assets/100dpi.png', width: 900),
      // Image.asset('assets/1000dpi.png', width: 900),

      // Text('Text 900...'),
      // Image.asset('assets/1000dpi.png', width: 700),

      // ...buildElementList(30, 30, 1, '100dpi'),
      ...buildElementList(100, 100, 1, '10dpi'),
      // ...buildElementList(100, 100, 30, '100dpi'),
      // ...buildElementList(100, 100, 30, '1000dpi'),
    ];
  }

  List<Widget> buildElementList(
    double init,
    double end,
    int inc,
    String imageSrc,
  ) {
    List<Widget> list = [];

    list.add(Text('========================='));
    list.add(Image.asset('assets/$imageSrc.png'));
    list.add(Text('-----------'));

    for (var i = init; i <= end; i += inc) {
      list.add(Text('Text $i ($imageSrc)'));
      list.add(_getImage(imageSrc, i.toInt()));
    }

    return list;
  }

  Widget _getImage(String imageSrc, int i) {
    return Image.asset(
      'assets/$imageSrc.png',
      // width: i.toDouble(),
      fit: BoxFit.fill,
      scale: .25,
    );
    // return AspectRatio(
    //   aspectRatio: 1 / 1,
    //   child: Image.asset(
    //     'assets/$imageSrc.png',
    //     width: i.toDouble(),
    //     fit: BoxFit.fill,
    //   ),
    // );
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

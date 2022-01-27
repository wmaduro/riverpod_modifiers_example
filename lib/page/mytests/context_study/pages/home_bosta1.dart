import 'package:flutter/material.dart';

class HomeBosta1 extends StatefulWidget {
  HomeBosta1({Key? key}) : super(key: key);

  @override
  State<HomeBosta1> createState() => _HomeBostaState();
}

class _HomeBostaState extends State<HomeBosta1> {
  var text = 'init';
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: _body(text),
    // );
    return _body(text);
  }
}

Widget _body(text) {
  return StatefulBuilder(
    builder: (BuildContext context, setState) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Update'),
              onPressed: () {
                setState(
                  () {
                    if (text != 'clicked')
                      text = 'clicked';
                    else
                      text = 'init';
                  },
                );
              },
            ),
            Text(text),
          ],
        ),
      );
    },
  );
}

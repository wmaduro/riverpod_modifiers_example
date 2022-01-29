import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';

import 'components/my_button.dart';

class LixoPageTestStudy extends StatelessWidget {
  const LixoPageTestStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myLogContext(context, this);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('lixo'),
            buildNavigationButton(
              path: '',
            ),
          ],
        ),
      ),
    );
  }
}

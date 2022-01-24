import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';

class LixoPageContextStudy extends StatelessWidget {
  const LixoPageContextStudy({Key? key}) : super(key: key);

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
      body: Container(
        child: Text('lixo page'),
      ),
    );
  }
}

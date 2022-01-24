import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils.dart';

class LixoPage2ContextStudy extends StatelessWidget {
  const LixoPage2ContextStudy({Key? key}) : super(key: key);

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
        child: Text('lixo page 2'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LixoPageContextStudy extends StatelessWidget {
  const LixoPageContextStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

import 'package:flutter/material.dart';

class Header2 extends StatelessWidget {
  final String text;
  const Header2(this.text) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Header2: $text'),
          ],
        ),
      ),
    );
  }
}

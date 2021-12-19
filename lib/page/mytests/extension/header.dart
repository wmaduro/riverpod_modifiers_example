import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Header: '),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'expanded_widget.dart';
import 'flexible_widget.dart';

class HomePageLixo extends StatefulWidget {
  @override
  _HomePageLixoState createState() => _HomePageLixoState();
}

class _HomePageLixoState extends State<HomePageLixo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExpandedWidget(),
            ),
          );
        },
        child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: Center(child: Text("Expanded Widget"))),
      ),
      SizedBox(height: 100),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FlexibleWidget(),
            ),
          );
        },
        child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.teal[700]),
            child: Center(child: Text("Flexible Widget"))),
      )
    ])));
  }
}

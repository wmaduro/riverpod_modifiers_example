import 'package:flutter/material.dart';

class BoxComponent extends StatelessWidget {
  final Widget content;
  final Color color;
  final double sideSize;

  const BoxComponent({
    required this.content,
    this.color = Colors.amber,
    this.sideSize = 100,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: sideSize,
      child: content,
    );
  }
}

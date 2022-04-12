import 'package:flutter/material.dart';

final buildSimpleTextcreen = () => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SimpleText(content: 'golden'),
      ],
    );

class _SimpleText extends StatelessWidget {
  final String content;

  const _SimpleText({Key? key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}

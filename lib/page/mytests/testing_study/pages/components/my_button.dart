import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/extenstion/text_theme_extension.dart';

Widget buildNavigationButton({
  required String path,
  required String text,
}) {
  return Builder(
    builder: (context) {
      return ElevatedButton(
        child: Text(
          text,
          style: Theme.of(context).textTheme.myHeadline4,
        ),
        onPressed: () {
          _onPressed(context, path);
        },
      );
    },
  );
}

void _onPressed(
  BuildContext context,
  String path,
) {
  Navigator.pushNamed(context, '/$path');
}

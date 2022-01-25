import 'package:flutter/material.dart';

Widget buildNavigationButton({
  required BuildContext context,
  required String path,
}) {
  return ElevatedButton(
    child: Text('$path page'),
    onPressed: () {
      _onPressed(context, path);
    },
  );
}

void _onPressed(
  BuildContext context,
  String path,
) {
  Navigator.pushNamed(context, '/$path');
}

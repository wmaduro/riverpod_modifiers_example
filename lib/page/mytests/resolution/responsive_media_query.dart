import 'package:flutter/material.dart';

Widget applyResposivenessFactor(BuildContext context, Widget widget) {
  final MediaQueryData mediaQueryData = MediaQuery.of(context);
  return MediaQuery(
    data: mediaQueryData.copyWith(
      // textScaleFactor:
      //     mediaQueryData.textScaleFactor * _calculateResponsivenessFactor(),
      devicePixelRatio:
          mediaQueryData.devicePixelRatio * _calculateResponsivenessFactor(),
    ),
    child: widget,
  );
}

double _calculateResponsivenessFactor() {
  return 0;
}

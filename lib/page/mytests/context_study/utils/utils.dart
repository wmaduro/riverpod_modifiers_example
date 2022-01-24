import 'dart:developer';

import 'package:flutter/cupertino.dart';

void myLogContext(BuildContext context, Object object) {
  log('context for ${object.runtimeType.toString()}: ${context.hashCode}');
}

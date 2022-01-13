import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

final bodyContent = (String buttonText) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonWidget(text: buttonText, onClicked: () {}),
        //  _SimpleText(content: 'golden'),
      ],
    );

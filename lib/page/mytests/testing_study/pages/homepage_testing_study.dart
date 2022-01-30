import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/extenstion/build_context_extension.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/extenstion/text_theme_extension.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/pages/components/my_button.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'login_widget.dart';

class HomePageTestingStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    myLogContext(context, this);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ..._loginBody(),
          ],
        ),
      ),
    );
  }
}

final snackBar = SnackBar(
  content: const Text('Yay! A SnackBar!'),
  action: SnackBarAction(
    label: 'Undo',
    onPressed: () {
      // Some code to undo the change.
    },
  ),
);

List<Widget> _loginBody() {
  return [
    // LoginWidget(),
  ];
}

List<Widget> _lixo(BuildContext context) {
  return [
    ElevatedButton(
      child: Text('Update'),
      onPressed: () {},
    ),
    Text('bosta'),
    ButtonWidget(
      text: 'snake bar',
      onClicked: () {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    ),
    buildNavigationButton(
      path: 'lixo',
    ),
    buildNavigationButton(
      path: 'lixo2',
    )
  ];
}

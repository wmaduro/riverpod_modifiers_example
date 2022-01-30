import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/extenstion/text_theme_extension.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';

class LixoPageTestingStudy extends StatelessWidget {
  const LixoPageTestingStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myLogContext(context, this);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCheckBox(),
            _buildNavigationButton(
              path: 'login',
              text: 'logout',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton({
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

  Widget _buildCheckBox() {
    return Checkbox(
      value: false,
      onChanged: (_) {},
    ); //Chec
  }
}

import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/extenstion/text_theme_extension.dart';
import 'package:riverpod_modifiers_example/page/mytests/context_study/utils/utils.dart';

class LixoPageTestingStudy extends StatefulWidget {
  const LixoPageTestingStudy({Key? key}) : super(key: key);

  @override
  State<LixoPageTestingStudy> createState() => _LixoPageTestingStudyState();
}

class _LixoPageTestingStudyState extends State<LixoPageTestingStudy> {
  bool checkBoxStatus = false;

  @override
  Widget build(BuildContext context) {
    myLogContext(context, this);
    return Scaffold(
      appBar: _appBar(context),
      body: _body(),
    );
  }

  Center _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNavigationButton(
            path: 'login',
            text: 'logout',
          ),
          _buildCheckBox(checkBoxStatus),
          _fuildCheckBoxSF(checkBoxStatus),
          _checboxSetState(),
          _checkCheckboxStatusValue(),
        ],
      ),
    );
  }

  CheckboxListTile _checboxSetState() {
    return CheckboxListTile(
      title: Text('integrated state...'),
      value: checkBoxStatus,
      onChanged: (bool? value) {
        // This is where we update the state when the checkbox is tapped
        setState(() {
          checkBoxStatus = value!;
        });
      },
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new)),
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

  Widget _buildCheckBox(bool checkBoxStatus) {
    return CheckboxListTile(
      title: Text('alone...'),
      value: checkBoxStatus,
      onChanged: (value) {
        checkBoxStatus = value!;
      },
    );
  }

  Widget _fuildCheckBoxSF(bool checkBoxStatus) {
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
        return CheckboxListTile(
          title: Text('separated state...'),
          value: checkBoxStatus,
          onChanged: (value) {
            setState(() {
              checkBoxStatus = value!;
            });
          },
        );
      },
    );
  }

  Widget _checkCheckboxStatusValue() {
    return ElevatedButton(
      child: Text(
        'Checkout Status',
        style: Theme.of(context).textTheme.myHeadline4,
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('checkBoxStatus: $checkBoxStatus'),
          ),
        );
      },
    );
  }
}

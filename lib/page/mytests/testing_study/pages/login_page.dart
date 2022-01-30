import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'lixo_page_testing_sutdy.dart';

Widget loginPage = Scaffold(
  resizeToAvoidBottomInset: true,
  backgroundColor: const Color.fromRGBO(40, 38, 56, 1),
  body: _LoginScreen(),
  bottomNavigationBar: BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Apple Developers' Group, PESU",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      )),
);

class _LoginScreen extends StatefulWidget {
  const _LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<_LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  bool _isVisible = false;

  fetchCredentials() {
    var username = "mad";
    var password = "mad";
    return [username, password];
  }

  @override
  Widget build(BuildContext context) {
    usernameController.text = fetchCredentials()[0];
    passwordController.text = fetchCredentials()[1];

    return SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Login text Widget
            _headerLogin(),

            // Wrong Password text
            _errorMessage(),

            // Textfields for username and password fields
            _fields(context),

            // Submit Button
            _button(context),
          ],
        ));
  }

  Container _button(BuildContext context) {
    return Container(
      width: 570,
      height: 70,
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
          color: Colors.pink,
          child: Text("Submit", style: TextStyle(color: Colors.white)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            if (kDebugMode) {
              if (usernameController.text == fetchCredentials()[0] &&
                  passwordController.text == fetchCredentials()[1]) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LixoPageTestingStudy()),
                  (Route<dynamic> route) => false,
                );
              } else {
                setState(() {
                  _isVisible = true;
                });
              }
            }
          }),
    );
  }

  Container _fields(BuildContext context) {
    return Container(
      height: 140,
      width: 530,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
      child: Column(
        children: <Widget>[
          _emailField(context),
          Divider(
            thickness: 3,
          ),
          _passwordField(),
        ],
      ),
    );
  }

  TextFormField _passwordField() {
    return TextFormField(
      onTap: () {
        setState(() {
          _isVisible = false;
        });
      },

      controller: passwordController, // Controller for Password
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Password",
          contentPadding: EdgeInsets.all(20),
          // Adding the visibility icon to toggle visibility of the password field
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          )),
      obscureText: _isObscure,
    );
  }

  TextFormField _emailField(BuildContext context) {
    return TextFormField(
      onTap: () {
        setState(() {
          _isVisible = false;
        });
      },
      controller: usernameController, // Controller for Username
      decoration: InputDecoration(border: InputBorder.none, hintText: "Username", contentPadding: EdgeInsets.all(20)),
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
    );
  }

  Visibility _errorMessage() {
    return Visibility(
      visible: _isVisible,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(10),
        child: Text(
          "Wrong credentials entered",
          style: TextStyle(
            color: Colors.red,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Center _headerLogin() {
    return Center(
      child: Container(
        height: 200,
        width: 400,
        alignment: Alignment.center,
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
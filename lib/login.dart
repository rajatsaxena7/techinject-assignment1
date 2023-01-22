import 'package:flutter/material.dart';
import 'package:flutter_application_1/googlesignin.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/mainpage.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(192, 224, 112, 112),
              Color.fromARGB(190, 199, 99, 174),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "WEIGHt-log",
                    style: TextStyle(
                        fontFamily: "Kavoon",
                        fontSize: 50,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Color.fromARGB(255, 189, 2, 64),
                              offset: Offset(3, 3)),
                        ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage(
                                        title: 'Select',
                                      )));
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

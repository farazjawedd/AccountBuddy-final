// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _leftstyle = TextStyle(fontSize: 40, color: Colors.white);
    var _size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
        ),
        body: Row(
          children: [
            _leftside(size: _size, leftstyle: _leftstyle),
            rightSide()
          ],
        ));
  }
}

class _leftside extends StatelessWidget {
  const _leftside({
    Key? key,
    required Size size,
    required TextStyle leftstyle,
  })  : _size = size,
        _leftstyle = leftstyle,
        super(key: key);

  final Size _size;
  final TextStyle _leftstyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.height,
      width: _size.width * 0.25,
      color: Color.fromARGB(255, 85, 151, 128),
      child: Column(
        children: [
          SizedBox(
            height: _size.height * 0.4,
            width: _size.width * 0.25,
          ),
          Text(
            "Welcome To",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 10,
            width: _size.width * 0.25,
          ),
          Text(
            "Account",
            style: _leftstyle,
          ),
          Text(
            "Buddy",
            style: _leftstyle,
          )
        ],
      ),
    );
  }
}

class rightSide extends StatefulWidget {
  const rightSide({Key? key}) : super(key: key);

  @override
  State<rightSide> createState() => _rightSideState();
}

class _rightSideState extends State<rightSide> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    var textstyle = TextStyle(color: Colors.white, fontSize: 25);
    var _size = MediaQuery.of(context).size;

    Widget input(toWrite, controllerParameter) {
      return TextField(
        controller: controllerParameter,
        obscureText: (toWrite == "Password") ? true : false,
        decoration: InputDecoration(
            labelText: toWrite,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
      );
    }

    return Container(
      alignment: Alignment.topCenter,
      width: _size.width * 0.75,
      color: Color.fromARGB(255, 32, 32, 32),
      child: Column(
        children: [
          SizedBox(
            height: _size.height * 0.2,
          ),
          Text(
            "Log in",
            style: textstyle,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: _size.height * 0.4,
            width: _size.width * 0.5,
            child: Column(
              children: [
                input("Email Address", emailController),
                SizedBox(
                  height: 20,
                ),
                input("Password", passwordController),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 320,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Forgot Password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129),
                                fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('forgot password"');
                              }),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      email = emailController.text;
                      password = passwordController.text;
                    },
                    child: Text(" Login"),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 52, 133, 55),
                        shape: StadiumBorder()),
                  ),
                ),
              ],
            ),
          ),
          RichText(
              text: TextSpan(style: textstyle,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                TextSpan(text: "New user? Sign up "),
                TextSpan(
                    text: "here",
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, "/signup");
                      })
              ]))
        ],
      ),
    );
  }
}

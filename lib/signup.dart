// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
            Container(
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
            ),
            rightSide()
          ],
        ));
  }
}

class rightSide extends StatefulWidget {
  const rightSide({Key? key}) : super(key: key);

  @override
  State<rightSide> createState() => _rightSideState();
}

class _rightSideState extends State<rightSide> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final businessNameController = TextEditingController();
  var fullName = "";
  var email = "";
  var password = "";
  var confirmPassword = "";
  var businessName = "";

  @override
  Widget build(BuildContext context) {
    var textstyle = TextStyle(color: Colors.white, fontSize: 25);
    var _size = MediaQuery.of(context).size;

    Widget input(toWrite, controllerParameter) {
      var ob;
      if (toWrite == "Password" || toWrite == "Confirm Password") {
        ob = true;
      } else {
        ob = false;
      }
      return TextField(
        controller: controllerParameter,
        obscureText: ob,
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
            "Sign up",
            style: textstyle,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: _size.height * 0.4,
            width: _size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                input("Full Name", fullNameController),
                input("Email Address", emailController),
                input("Password", passwordController),
                input("Confirm Password", confirmPasswordController),
                input("Business Name", businessNameController),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "By signing up, I agree to the privacy rules and terms services.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                fullName = fullNameController.text;
                email = emailController.text;
                password = passwordController.text;
                confirmPassword = confirmPasswordController.text;
                businessName = businessNameController.text;
                setState(() {});
              },
              child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 52, 133, 55),
                  shape: StadiumBorder()),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("or Login"),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 44, 44, 44),
                  onPrimary: Color.fromARGB(255, 52, 133, 55),
                  shape: StadiumBorder()),
            ),
          ),
        ],
      ),
    );
  }
}

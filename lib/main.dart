// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:accountbuddy/login.dart';
import 'package:accountbuddy/qaim.dart';
import 'package:accountbuddy/side_container.dart';
import 'package:accountbuddy/signup.dart';
import 'package:accountbuddy/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Account Buddy",
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignupPage()
      },
    );
  }
}

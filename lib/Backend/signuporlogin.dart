import 'package:flutter/material.dart';
import 'package:accountbuddy/pages/login.dart';
import 'package:accountbuddy/pages/resetPassword.dart';
import 'package:accountbuddy/pages/signup.dart';



class SignUpOrLogin extends StatefulWidget {
  @override
  _SignUpOrLoginState createState() => _SignUpOrLoginState();
}


class _SignUpOrLoginState extends State<SignUpOrLogin> {
  // ignore: non_constant_identifier_names
  bool sign_up = false ;
  bool reset = false;

  void toggleViewNormal(){
    setState(() {
      sign_up = !sign_up ;
    });
  }
  void toggleViewReset(){
    setState(() {
      reset = !reset ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return (reset ? ResetPassword(switchScreen: toggleViewReset) :
    (sign_up ? SignUp(switchScreen: toggleViewNormal) : Login(switchScreen1: toggleViewNormal, switchScreen2: toggleViewReset))) ;
  }

}
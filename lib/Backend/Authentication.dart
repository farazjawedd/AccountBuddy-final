import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Authentication {
  // creating an instance of firebase
  FirebaseAuth _auth = FirebaseAuth.instance;
  // creating an instance of firestore (database)
  FirebaseFirestore _db = FirebaseFirestore.instance;

  // stream of asynchronous authentication updates i.e login, sign in, log out

  // check if the user has verified his/her Account

  // Sign up with email and password
  Future<String> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      //  creating an account
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("Success");
      await _auth.currentUser!.sendEmailVerification();
      print("Verified");
      return "";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return "Email already exists!";
      }
      if (e.code == 'weak-password') {
        return e.message.toString();
      }
      return "Error occurred, please try again";
    }
  }
  /*
  // login user
  Future loginWithEmailAndPassword(String email, password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(result);
      return "";
    } on FirebaseAuthException catch (err) {
      print(err);
      if (err.code == "wrong-password") {
        return "Incorrect Password";
      }
      if (err.code == "invalid-email") {
        return "Invalid Email";
      }
      if (err.code == "user-not-found") {
        return "Account Does Not Exist";
      }
      return "error";
    }
  }

  // Sign Out
  Future signOut() async {
    try {
      _auth.signOut();
    } catch (err) {
      print(err);
    }
  }

// Reset Password
  Future<String> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return "Reset Email Sent";
    } catch (err) {
      print(err);
      return "Error";
    }
  }
*/
}

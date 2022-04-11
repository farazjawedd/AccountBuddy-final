import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'Backend/Authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tester(),
    );
  }
}

class Tester extends StatefulWidget {
  const Tester({Key? key}) : super(key: key);

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  void validate() async {
    if (_formKey.currentState!.validate()) {
      String message =
          await Authentication().signUpWithEmailAndPassword(email, password);
      print(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 106, 224, 183),
          child: Form(
              key: _formKey,
              child: SafeArea(
                minimum: EdgeInsets.all(30),
                child: Column(children: <Widget>[
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(labelText: "Name"),
                    //validator: (val) => emailValidator(val!, false),
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(labelText: "Password"),
                    //validator: (val) => emailValidator(val!, false),
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  ElevatedButton(
                    onPressed: () => validate(),
                    child: Text(
                      'Sign Up',
                    ),
                  )
                ]),
              ))),
    );
  }
}







/*child: const Text(
          'Welcome to AccountBuddy',
          textAlign: TextAlign.left,
          style: TextStyle(decoration: TextDecoration.none, fontSize: 20),
        ),
        padding: const EdgeInsets.only(top: 20.0));
 */ 
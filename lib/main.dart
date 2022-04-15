import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:accountbuddy/screens/login_screen.dart';
import 'Backend/Authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp((MyApp()));
}

/*
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
  String full_name = "";
  String email = "";
  String password = "";
  String confirm_password = "";
  String business_name = "";

  void validate() async {
    if (_formKey.currentState!.validate()) {
      String message =
          await Authentication().signUpWithEmailAndPassword(email, password);
          await firebase.init
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
                    decoration: InputDecoration(labelText: "Full Name"),
                    //validator: (val) => emailValidator(val!, false),
                    onChanged: (val) {
                      setState(() => full_name = val);
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(labelText: "Email"),
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
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(labelText: "Confirm Password"),
                    //validator: (val) => emailValidator(val!, false),
                    onChanged: (val) {
                      setState(() => confirm_password = val);
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(labelText: "Business Name"),
                    //validator: (val) => emailValidator(val!, false),
                    onChanged: (val) {
                      setState(() => business_name = val);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => validate(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Up',
                        ),
                      ),
                    ),
                  )
                ]),
              ))),
    );
  }
}





*/
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email And Password Login',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

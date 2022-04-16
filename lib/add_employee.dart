import 'package:flutter/material.dart';
import 'package:web_app/side_container.dart';

class Employee extends StatefulWidget {
  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var colorText = Color.fromRGBO(134, 229, 195, 1);
    //rgba(182,184,186,255)
    var colorTextBlack = Color.fromRGBO(182, 184, 186, 1);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Row(
            children: [
            SideCOntainer(),
              Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.02,
                      left: size.width * 0.01,
                      right: size.width * 0.01,
                  bottom: size.width * 0.05),
                  height: size.height,
                  width: size.width * 0.73,
                  // rgba(53,187,138,255)
                  //  rgba(38,40,45,255)
                  color: Color.fromRGBO(38, 40, 45, 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          SizedBox(
                            width: (size.width * 0.65),
                          ),
                          Icon(
                            Icons.settings,
                            color: colorTextBlack,
                            size: 35.0,
                          )
                        ],
                      ),
                      Text(
                        'Create New Employee Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27.0,
                            fontWeight: FontWeight.w100),
                      ),

                      SizedBox(
                        height: 100.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.teal.shade100,
                        ),
                      ),
                      Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150.0),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 350.0),
                            child: ListTile(
                              title:
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextField(
                                  cursorColor: Colors.teal,
                                  style: TextStyle(color: colorTextBlack),
                                  keyboardType: TextInputType.text,
                                  decoration: new InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: 'Name',
                                    hintStyle: TextStyle(
                                      color: Colors.teal.shade200,
                                      fontSize: 20.0,
                                    ),
                                    isDense: true,
                                  ),
                                ),
                            )),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(150.0),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 350.0),
                          child: ListTile(
                            title:
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                cursorColor: Colors.teal,
                                style: TextStyle(color: colorTextBlack),
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                    color: Colors.teal.shade200,
                                    fontSize: 20.0,
                                  ),
                                  isDense: true,
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 30.0,
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(150.0),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 350.0),
                          child: ListTile(
                            title:
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                cursorColor: Colors.teal,
                                style: TextStyle(color: colorTextBlack),
                                keyboardType: TextInputType.text,
                                decoration: new InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                    color: Colors.teal.shade200,
                                    fontSize: 20.0,
                                  ),
                                  isDense: true,
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 50.0,
                      ),
                      Card(
                          color: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(150.0),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 430.0),
                          child: ListTile(
                            title:
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                  'Create Account',
                                  style: TextStyle(
                                    color: Colors.teal.shade200,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          )),

                    ],
                  )),

        ],
        ),
      ),
    );
  }
}

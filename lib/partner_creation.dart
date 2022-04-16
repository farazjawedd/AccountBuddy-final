// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:accountbuddy/side_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PartnerCreation extends StatelessWidget {
  const PartnerCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Partner Registration"),
        ),
        body: Row(
          children: [SideCOntainer(), RightSidePartnerCreation()],
        ));
  }
}

class RightSidePartnerCreation extends StatefulWidget {
  const RightSidePartnerCreation({Key? key}) : super(key: key);

  @override
  State<RightSidePartnerCreation> createState() =>
      _RightSidePartnerCreationState();
}

class _RightSidePartnerCreationState extends State<RightSidePartnerCreation> {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final beginningBalanceController = TextEditingController();
  final phoneNumberController = TextEditingController();
  var checkBoxValue;
  var name = "";
  var address = "";
  var phoneNumber = "";
  var beginningBalance = "";
  bool? cValue = false;

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width * 0.75,
      color: Color.fromARGB(255, 31, 31, 31),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Create new partner",
            style: whiteStyle(30),
          ),
          SizedBox(
            height: 30,
          ),
          Container(width: 400, child: input("Name", nameController)),
          SizedBox(
            height: 15,
          ),
          Container(width: 400, child: input('Address', addressController)),
          SizedBox(
            height: 15,
          ),
          Container(
              width: 400,
              child: input("Beginning Balance", beginningBalanceController)),
          SizedBox(
            height: 15,
          ),
          Container(
              width: 400, child: input('Phone Number', phoneNumberController)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 320,
              ),
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: cValue,
                  onChanged: (bool? value) {
                    setState(() {
                      cValue = value;
                    });
                  },
                ),
              ),
              Text(
                "Do you also purchase goods from this party?",
                style: whiteStyle(17),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                name = nameController.text;
                address = addressController.text;
                beginningBalance = beginningBalanceController.text;
                phoneNumber = phoneNumberController.text;
                setState(() {});
                print(name);
              },
              child: Text(" Save"),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 52, 133, 55),
                  shape: StadiumBorder()),
            ),
          ),
        ],
      ),
    );
  }

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

  TextStyle whiteStyle(fontsize) {
    return TextStyle(color: Colors.white, fontSize: fontsize);
  }
}

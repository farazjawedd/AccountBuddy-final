// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:accountbuddy/partner_creation.dart';
import 'package:accountbuddy/request_stock.dart';
import 'package:accountbuddy/side_container.dart';
import 'package:flutter/material.dart';

class IssueStock extends StatelessWidget {
  const IssueStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Issue Stock"),
      ),
      body: Row(
        children: [SideCOntainer(), RightSideIssueStock()],
      ),
    );
  }
}

class RightSideIssueStock extends StatefulWidget {
  RightSideIssueStock({Key? key}) : super(key: key);

  @override
  State<RightSideIssueStock> createState() => _RightSideIssueStockState();
}

class _RightSideIssueStockState extends State<RightSideIssueStock> {
  var requests = <stockTransfer>[];
  var defaultStyle = TextStyle(color: Colors.white);
  var employees = ["Employee 1", "Employee 2", "Employee 3"];
  String? employeeSelected;
  var products = ["Product 1", "Product 2", "Product 3"];
  String? productSelected;
  var variants = ["Variant 1 ", "Variant 2", "Variant 3"];
  String? variantSelected;
  final quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var date = getCurrentDate();

    var _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.75,
      height: _size.height,
      alignment: Alignment.topCenter,
      color: Color.fromARGB(255, 31, 31, 31),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "Issue stock to Employee",
                style: whiteStyle(28),
              ),
              SizedBox(
                width: _size.width * 0.38,
              ),
              Text(
                "Date: $date",
                style: whiteStyle(20),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(style: BorderStyle.solid, width: 0.80),
                  ),
                  child: DropdownButton(
                    // Initial Value
                    value: employeeSelected,
                    hint: Text(
                        "    Which employee do you want to send stock to?                           "),

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: employees.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        employeeSelected = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 35,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(style: BorderStyle.solid, width: 0.80),
                ),
                child: DropdownButton(
                  // Initial Value
                  value: productSelected,
                  hint: Text("    Select Product           "),

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: products.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      productSelected = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 170,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(style: BorderStyle.solid, width: 0.80),
                ),
                child: DropdownButton(
                  // Initial Value
                  value: variantSelected,
                  hint: Text("    Select Product Variant          "),

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: variants.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      variantSelected = newValue!;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 35,
              ),
              Container(
                width: 200,
                child: TextField(
                  controller: quantityController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Quantity to Issue",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
              ),
              SizedBox(
                width: 500,
              ),
              Container(
                height: 50,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (employeeSelected == null ||
                          productSelected == null ||
                          variantSelected == null || quantityController.text.toString() == "") {
                        showAlertDialog(context);
                        return;
                      }

                      requests.add(stockTransfer(
                          employeeSelected.toString(),
                          int.parse(quantityController.text),
                          productSelected.toString(),
                          variantSelected.toString()));
                    });
                  },
                  child: Text(" Update"),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 52, 133, 55),
                      shape: StadiumBorder()),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 365,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 66, 64, 64),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(style: BorderStyle.solid, width: 0.80),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Product",
                      style: greyStyle(20),
                    ),
                    Text(
                      "Variant",
                      style: greyStyle(20),
                    ),
                    Text(
                      "Quantity to issue",
                      style: greyStyle(20),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 150,
                            ),
                            Container(
                              width: 250,
                              child: Text(requests[index].employee.toString(),
                                  style: defaultStyle),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 250,
                              child: Text(
                                  requests[index].productVariant.toString(),
                                  style: defaultStyle),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 150,
                              child: Text(
                                  requests[index].quantityRequested.toString(),
                                  style: defaultStyle),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: requests.length,
                    shrinkWrap: true,
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 35,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(" Issue stock"),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 52, 133, 55),
                      shape: StadiumBorder()),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("There was an error. "),
    content: Text(
        "You left a field missing. Please fill in all the fields and try again."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

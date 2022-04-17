import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/side_container.dart';

class PartnerList extends StatefulWidget {
  @override
  _PartnerListState createState() => _PartnerListState();
}

class _PartnerListState extends State<PartnerList>
{
  //rgba(134,229,195,255)
  var colorText = Color.fromRGBO(134, 229, 195, 1);
  //rgba(182,184,186,255)
  var colorTextBlack = Color.fromRGBO(182, 184, 186, 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        children: [
          SideCOntainer(),
          Container(
            height: size.height,
            width: size.width * 0.73,
            // rgba(53,187,138,255)
            //  rgba(38,40,45,255)
            color: Color.fromRGBO(38, 40, 45, 1),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "List of Partners",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,)
                        ),
                        Icon(
                          Icons.settings,
                          color: colorTextBlack,
                          size: 40.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              SizedBox(
                                width: (size.width * 0.65),
                              ),
                              Icon(
                                Icons.search,
                                color: colorTextBlack,
                                size: 35.0,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(700,5,5,5,),
                            child: TextField(
                              //controller: employeeNameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: "Search By Partner Name",
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  )),
                            ),
                          ),
                        ]),
                  ),

                  Container(
                    height: size.height * 0.7,
                    width: size.width * 0.76,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        //rgba(64,66,67,255)
                        color: Colors.blueGrey),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Partner Name",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                nameTile("Ali","A", Colors.grey),
                                SizedBox(
                                  height: 5.0,
                                ),
                                nameTile("Reeha","R", Colors.grey),
                                SizedBox(
                                  height: 5.0,
                                ),
                                nameTile("Qaim","Q", Colors.grey),
                                SizedBox(
                                  height: 5.0,
                                ),
                                nameTile("Inara","A", Colors.grey),
                                SizedBox(
                                  height: 5.0,
                                ),
                                nameTile("Faraz","F", Colors.grey),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balance",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 14.6, 8, 14.6),
                                  child: Text(
                                    "250",
                                    style: TextStyle(
                                        color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 14.6, 8, 14.6),
                                  child: Text(
                                    "500",
                                    style: TextStyle(
                                        color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 14.6, 8, 14.6),
                                  child: Text(
                                    "400",
                                    style: TextStyle(
                                        color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 14.6, 8, 14.6),
                                  child: Text(
                                    "300",
                                    style: TextStyle(
                                        color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 14.6, 8, 14.6),
                                  child: Text(
                                    "150",
                                    style: TextStyle(
                                        color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 14.6, 8, 14.6),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                          color: Colors.grey,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 14.6, 8, 14.6),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                          color: Colors.grey,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 14.6, 8, 14.6),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                          color: Colors.grey,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 14.6, 8, 14.6),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                          color: Colors.grey,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 14.6, 8, 14.6),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                          color: Colors.grey,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget nameTile(name, letter, color) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(100.0),
                //rgba(64,66,67,255)
                color: color),
            child: Center(child: Text(letter)),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            name,
            style:
            TextStyle(color: colorTextBlack, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget dateTile(name, date) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            date,
            style:
            TextStyle(color: colorTextBlack, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget activityTile(icon, color, name) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            name,
            style:
            TextStyle(color: colorTextBlack, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}






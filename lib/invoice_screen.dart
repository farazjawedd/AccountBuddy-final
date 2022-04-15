import 'package:flutter/material.dart';
import 'package:web_app/side_container.dart';

class Invoice extends StatefulWidget {
  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var colorText = Color.fromRGBO(134, 229, 195, 1);
    //rgba(182,184,186,255)
    var colorTextBlack = Color.fromRGBO(182, 184, 186, 1);
    return Scaffold(
      body: Row(
        children: [
          SideCOntainer(),
          Container(
            padding: EdgeInsets.only(
                top: size.height * 0.05,
                left: size.width * 0.01,
                right: size.width * 0.01),
            height: size.height,
            width: size.width * 0.73,
            // rgba(53,187,138,255)
            //  rgba(38,40,45,255)
            color: Color.fromRGBO(38, 40, 45, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Invoice #",
                          style: TextStyle(
                              color: colorTextBlack,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16.0),
                          color: Colors.white,
                          // height: size.height*0.1  ,  // 4% of screen height
                          width: size.height * 0.2, // 80% of screen width
                          child: TextField(
                            cursorColor: Colors.black,
                            style: TextStyle(color: colorTextBlack),
                            // controller: itemNameController,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: '',
                              hintStyle: TextStyle(
                                color: colorTextBlack,
                              ),
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Date: March 1,2022",
                          style:
                              TextStyle(color: colorTextBlack, fontSize: 17.0),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          Icons.settings,
                          color: colorTextBlack,
                          size: 35.0,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  color: Colors.white,
                  // height: size.height*0.1  ,  // 4% of screen height
                  width: size.height * 0.7, // 80% of screen width
                  child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: colorTextBlack),
                    // controller: itemNameController,
                    keyboardType: TextInputType.text,

                    decoration: new InputDecoration(
                      suffixIcon: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: colorTextBlack,
                        size: 30.0,
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Select Partner...',
                      hintStyle: TextStyle(
                        color: colorTextBlack,
                      ),
                      isDense: true,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      color: Colors.white,
                      // height: size.height*0.1  ,  // 4% of screen height
                      width: size.height * 0.3, // 80% of screen width
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: colorTextBlack),
                        // controller: itemNameController,
                        keyboardType: TextInputType.text,

                        decoration: new InputDecoration(
                          suffixIcon: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: colorTextBlack,
                            size: 30.0,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Select Product...',
                          hintStyle: TextStyle(
                            color: colorTextBlack,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      color: Colors.white,
                      // height: size.height*0.1  ,  // 4% of screen height
                      width: size.height * 0.3, // 80% of screen width
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: colorTextBlack),
                        // controller: itemNameController,
                        keyboardType: TextInputType.text,

                        decoration: new InputDecoration(
                          suffixIcon: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: colorTextBlack,
                            size: 30.0,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Select Product Variant',
                          hintStyle: TextStyle(
                            color: colorTextBlack,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      color: Colors.white,
                      // height: size.height*0.1  ,  // 4% of screen height
                      width: size.height * 0.3, // 80% of screen width
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: colorTextBlack),
                        // controller: itemNameController,
                        keyboardType: TextInputType.text,

                        decoration: new InputDecoration(
                          // suffixIcon: Icon(Icons.arrow_drop_down_outlined,color: colorTextBlack,size: 30.0,),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Enter Quantity sold',
                          hintStyle: TextStyle(
                            color: colorTextBlack,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      color: Colors.white,
                      // height: size.height*0.1  ,  // 4% of screen height
                      width: size.height * 0.3, // 80% of screen width
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: colorTextBlack),
                        // controller: itemNameController,
                        keyboardType: TextInputType.text,

                        decoration: new InputDecoration(
                          suffixIcon: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: colorTextBlack,
                            size: 30.0,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Select Price',
                          hintStyle: TextStyle(
                            color: colorTextBlack,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      color: Colors.white,
                      // height: size.height*0.1  ,  // 4% of screen height
                      width: size.height * 0.3, // 80% of screen width
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: colorTextBlack),
                        // controller: itemNameController,
                        keyboardType: TextInputType.text,

                        decoration: new InputDecoration(
                          // suffixIcon: Icon(Icons.arrow_drop_down_outlined,color: colorTextBlack,size: 30.0,),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Total Amount',
                          hintStyle: TextStyle(
                            color: colorTextBlack,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      // color: Colors.white,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 38.0,
                          width: size.width * 0.17,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(51, 146, 114, 1),
                            //borderRadius: BorderRadius.circular(80.0),
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Update",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: colorText,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    //rgba(64,66,67,255)
                    color: Color.fromRGBO(88, 90, 92, 1),
                  ),
                  height: size.height * 0.45,
                  width: size.width * 0.9,
                  // rgba(53,187,138,255)
                  //  rgba(38,40,45,255)
                  child: Padding(
                    padding: EdgeInsets.only(top:11.0,left: 3.0,right: 3.0),
                    child: Column(

                      children: [
                        Container(
                          height: size.height*0.028,
                          width: size.width,
                          color: Colors.grey,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: colorTextBlack,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Variant",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: colorTextBlack,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Quantity sold",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: colorTextBlack,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Sales Price",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: colorTextBlack,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: colorTextBlack,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Container(
                      margin: EdgeInsets.only(top: 26.0,left: 70.0),
                      // color: Colors.white,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 38.0,
                          width: size.width * 0.12,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(51, 146, 114, 1),
                            //borderRadius: BorderRadius.circular(80.0),
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Finalize invoice",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: colorText,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

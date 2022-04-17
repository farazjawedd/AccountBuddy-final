import 'package:flutter/material.dart';
import 'package:web_app/admin_dashboard.dart';
import 'package:web_app/payment_screen.dart';

import 'invoice_screen.dart';
class SideCOntainer extends StatefulWidget {

  @override
  _SideCOntainerState createState() => _SideCOntainerState();
}

class _SideCOntainerState extends State<SideCOntainer> {
  var colorText=Color.fromRGBO(134, 229, 195, 1);
  //rgba(182,184,186,255)
  var colorTextBlack=Color.fromRGBO(182, 184, 186, 1);
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return   Container(
      height:size.height ,
      width:size.width*0.27 ,
      // rgba(53,187,138,255)
      color: Color.fromRGBO(53, 187, 138, 1),
      child: Padding(
        padding:  EdgeInsets.only(left:size.width*0.01,right:size.width*0.01),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.wc,color: Colors.white,size: 80.0,),
                  SizedBox(width: size.width*0.01,),
                  Text("Account Buddy",style: TextStyle(fontSize: 25.0,color: colorText,fontWeight:FontWeight.bold,letterSpacing: 2.0),),
                ],
              ),
              SizedBox(height: size.height*0.02,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Admin()));
                },
                child: Row(
                  children: [
                    Icon(Icons.pages,color: Colors.black,size: 25.0,),
                    SizedBox(width: size.width*0.01,),
                    Text("Dashboard",style: TextStyle(fontSize: 21.0,color: colorText,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              mainHeading("Partner", size, Icons.person),
              SizedBox(height: 10.0,),
              otherHeading("Create new partner", size, "icon"),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PartnerList()));
                  },
                  child: otherHeading("List of partners", size, "icon")),
              SizedBox(height: 10.0,),
              mainHeading("Products", size, Icons.margin),
              SizedBox(height: 10.0,),
              otherHeading("Create new product", size, "icon"),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProductList()));
                  },
                  child: otherHeading("List of products", size, "icon")),
              otherHeading("Issued Stocks", size, "icon"),
              otherHeading("Request Stocks", size, "icon"),
              otherHeading("Stocks Transfer Details", size, "icon"),
              otherHeading("Request revealed", size, "icon"),
              SizedBox(height: 10.0,),
              mainHeading("Sales Invoices", size, Icons.inventory),
              SizedBox(height: 10.0,),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Invoice()));
                  },
                  child: otherHeading("Create new invoice", size, "icon")),
              otherHeading("List of invoices", size, "icon"),
              SizedBox(height: 10.0,),
              mainHeading("Purchases", size, Icons.add_shopping_cart_rounded),
              SizedBox(height: 10.0,),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Payment()));
                  },
                  child: otherHeading("Add new purchase", size, "icon")),
              otherHeading("List of purchases", size, "icon"),
              SizedBox(height: 10.0,),
              mainHeading("Payment", size, Icons.payments_outlined),
              SizedBox(height: 10.0,),
              otherHeading("Add new payment", size, "icon"),
              otherHeading("List of payments", size, "icon"),
              SizedBox(height: 10.0,),
              mainHeading("Employee", size, Icons.payments_outlined),
              SizedBox(height: 10.0,),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Employee()));
                  },
                  child: otherHeading("Create new account", size, "icon")),
              otherHeading("List of employees", size, "icon"),
            ],
          ),
        ),
      ),
    );
  }
  Widget mainHeading(name,size,icon){
    return Row(
      children: [
        Icon(icon,color: Colors.black,size: 25.0,),
        SizedBox(width: size.width*0.01,),
        Text("$name",style: TextStyle(fontSize: 17.0,color: Colors.white,fontWeight: FontWeight.bold),),
      ],
    );
  }
  Widget otherHeading(name,size,icon){
    return Row(
      children: [
        SizedBox(width: size.width*0.025,),
        SizedBox(width: size.width*0.01,),
        Text("$name",style: TextStyle(fontSize: 16.0,color: colorText,fontWeight: FontWeight.bold),),
      ],
    );
  }
}

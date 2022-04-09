import 'package:flutter/material.dart';
import 'package:web_app/side_container.dart';
class AddAccount extends StatefulWidget {

  @override
  _AddAccountState createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  //rgba(134,229,195,255)
  var colorText=Color.fromRGBO(134, 229, 195, 1);
  //rgba(182,184,186,255)
  var colorTextBlack=Color.fromRGBO(182, 184, 186, 1);
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
body: Row(
  children: [
    SideCOntainer(),
    Container(
      height:size.height ,
      width:size.width*0.73 ,
   // rgba(53,187,138,255)
    //  rgba(38,40,45,255)
      color: Color.fromRGBO(38, 40, 45, 1),
      child: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create new Product",style: TextStyle(fontSize: 24.0,color: colorTextBlack,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.05,),

            rowFields("Product name", 'The title for your product', size),
            rowFields("Variant name", '', size),
            rowFields("Cost price", 'input purchase price', size),
          //  rowFields("Product name", In', size),
            rowFields("Sales price", 'input selling price', size),
            rowFields("Quantity in hand", 'Input quantity in hand', size),
            rowFields("Pack size", '', size),
            rowFields("Other info e.g Expiry Date", '', size),
            SizedBox(height: size.height*0.05,),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: size.width*0.06),
              child: RaisedButton(




                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 38.0,
                  width: size.width * 0.15,
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(51,146,114,1),
                      //borderRadius: BorderRadius.circular(80.0),

                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Create Product",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:colorText,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold

                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    ),

  ],
),
    );
  }
  Widget rowFields(name,hint,size){
    return Padding(
      padding:  EdgeInsets.only(right:size.width*0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Container(

          width: size.width*0.2,
          child: Text("$name",style: TextStyle(fontSize: 18.0,color: colorTextBlack,fontWeight: FontWeight.bold),)),
          SizedBox(width: size.width*0.1,),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            color: Colors.white,
           // height: size.height*0.1  ,  // 4% of screen height
            width:  size.height*0.5 ,   // 80% of screen width
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(color: colorTextBlack),
             // controller: itemNameController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: '$hint',
                hintStyle: TextStyle(color: colorTextBlack,),
                isDense: true,

              ),
            ),
          ),


        ],
      ),
    );

  }

}

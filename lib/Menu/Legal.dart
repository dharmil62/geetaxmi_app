import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/Menu/Employee.dart';
import 'package:geetaxmi_app/Menu/Return.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ProcessReq.dart';



class Legal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: SideDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   centerTitle: true,
      //   elevation: 1.0,
      //   leading: new Icon(Icons.menu),
      //   title: SizedBox(
      //     height: 20.0, child: Text("Drive Safe, Stay Safe for your Family", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'jost', color: Colors.white),), ),
      // ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: double.maxFinite,

        child: Column(
          children: <Widget>[
            CustomAppBar(
              isBig: false,
              height: 140,
              leading: Container(
                child: Padding(padding: EdgeInsets.only(left: 12),child: IconButton(icon: Icon(Icons.menu), color: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>  SideDrawer()));
                  },)),
              ),
              title: "Drive Safe, Stay Safe for your Family",
              childHeight: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Text("Legal Agreement for App Use",textAlign: TextAlign.center, style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20, fontFamily: 'jost', color: Colors.red,
                      ),),
                    ),
                    const Divider(
                      color: Colors.red,
                    ),
                    // Container(
                    //   margin: const EdgeInsets.all(10.0),
                    //   padding: const EdgeInsets.all(5.0),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.black),
                    //       borderRadius: new BorderRadius.circular(5.0)
                    //   ),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: <Widget>[
                    //       Text("Search Material",textAlign: TextAlign.center, style: TextStyle(
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 14, fontFamily: 'jost', color: Colors.black,
                    //       ),),
                    //       Icon(Icons.search, color: Colors.black,)
                    //     ],
                    //   ),
                    //   // child: Column(
                    //   //   children: <Widget>[
                    //   //
                    //
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Quantity :                          '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Description :                     '),
                    //
                    //
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Maintenance Order :       '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     const Divider(
                    //   //       color: Colors.black54,
                    //   //     ),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Material Code :                '),
                    //
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Description :                     '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Issue Date :                      '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Door No. :                         '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Maintenance Order :       '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //   ],
                    //   // ),
                    // ),
                  ],
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(label, style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black, fontFamily: 'jost',
              ),),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child:Container(
            height: 100,
            width: 320,
            child: TextField(
              obscureText: obscureText,
              maxLines: 4,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          ),

        ),
      ],
    );
  }

  Widget makeInput2({label, obscureText = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(label, style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black, fontFamily: 'jost',
          ),),
        ),


        Padding(
          padding: EdgeInsets.only(left: 20, ),
          child: Row(
            children: <Widget>[
              Container(
                height: 20,
                width: 100,
                child: TextField(
                  obscureText: obscureText,
                  maxLines: 1,
                  enabled: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

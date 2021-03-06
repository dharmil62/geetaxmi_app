import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/UI/Preventive5.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Breakdown2.dart';

class Preventive4 extends StatelessWidget {

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
                      padding: EdgeInsets.all(10.0),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 220),
                            child: Text("Performance",textAlign: TextAlign.center, style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16, fontFamily: 'jost', color: Colors.black,
                            ),),
                          ),
                          const Divider(
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,),
                                  ),
                                  Text("Hour m. Start :  ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.blueGrey,
                                        contentPadding: EdgeInsets.all(8),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10, ),
                                ],
                              ),

                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,),
                                  ),
                                  Text("Km. Start :         ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.blueGrey,
                                        contentPadding: EdgeInsets.all(8),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10, ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          const Divider(
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,),
                                  ),
                                  Text("Hour m. - End :  ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.blueGrey,
                                        contentPadding: EdgeInsets.all(8),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10, ),
                                ],
                              ),
                              Icon(Icons.camera_alt, color:Colors.red ,)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,),
                                  ),
                                  Text("Km. - End :         ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.blueGrey,
                                        contentPadding: EdgeInsets.all(8),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10, ),
                                ],
                              ),
                              Icon(Icons.camera_alt, color:Colors.red ,)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 230),
                            child: Text("Production",textAlign: TextAlign.center, style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16, fontFamily: 'jost', color: Colors.black,
                            ),),
                          ),
                          const Divider(
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,),
                                  ),
                                  Text("Trip :                   ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 150,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.blueGrey,
                                        contentPadding: EdgeInsets.all(8),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10, ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(80.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only( right: 20.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  Preventive5()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Complete Handover",textAlign: TextAlign.center, style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15, fontFamily: 'jost', color: Colors.white,
                                  ),),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only( right: 20.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  Performance()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Cancel",textAlign: TextAlign.center, style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15, fontFamily: 'jost', color: Colors.white,
                                  ),),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(label, style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black, fontFamily: 'jost',
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.mic, color: Colors.black,),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black, fontFamily: 'jost',
          ),),
        ),


        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                width: 320,
                child: TextField(
                  obscureText: obscureText,
                  maxLines: 1,
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
              Icon(Icons.arrow_drop_down, color: Colors.black,),
            ],
          ),
        ),
      ],
    );
  }
}
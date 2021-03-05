import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';

import 'SummaryPage.dart';

class Measures extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
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
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                      child:Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)
                            ),
                            child: Column(
                              children: <Widget>[
                                Text("Performance Measure. *", style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16, fontFamily: 'jost', color: Colors.black,
                                ),),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text("KMPH :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 50, ),
                                        Text("Difference :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
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
                                        Text("KMPH :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 50, ),
                                        Text("Difference :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
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
                                        Text("KMPH :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 50, ),
                                        Text("Difference :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
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
                                        Text("KMPH :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 50, ),
                                        Text("Difference :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)
                            ),
                            child: Column(
                              children: <Widget>[
                                Text("Production Measure. *", style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16, fontFamily: 'jost', color: Colors.black,
                                ),),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text("KMPH :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 50, ),
                                        Text("Trips/Hour :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
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
                                        Text("KMPH :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 50, ),
                                        Text("Trips/Hour :  -----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)
                            ),
                            child: Column(
                              children: <Widget>[
                                Text("Benchmark Measure. *", style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16, fontFamily: 'jost', color: Colors.black,
                                ),),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text("B. Name", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("Target Val", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("Archived Val", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("Tag", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
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
                                        Text("      ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("            ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("             ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("           ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
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
                                        Text("      ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("            ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("             ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                        SizedBox(width: 10, ),
                                        Text("           ----", style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black, fontFamily: 'jost',
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right:140),
                                  child: Text("(Note : Six Time Value)", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black, fontFamily: 'jost',
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only( right: 40.0, left: 20.0 ),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>   SummaryPage()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.blue, width: 2.0),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("Digital Performance",textAlign: TextAlign.center, style: TextStyle(
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
                      padding: EdgeInsets.all(10.0),
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
}
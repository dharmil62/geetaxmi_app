import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Measures.dart';
import 'package:geetaxmi_app/UI/Modify2.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/UI/Preventive2.dart';
import 'package:geetaxmi_app/UI/ReportIdle.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Preventive extends StatelessWidget {

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
                child: Padding(
                    padding: EdgeInsets.only(left: 12), child: IconButton(
                  icon: Icon(Icons.menu), color: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SideDrawer()));
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
                          child: Table(
                              border: TableBorder.all(
                                  color: Colors.black
                              ),
                              // Allows to add a border decoration around your table
                              children: [
                                TableRow(children :[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, bottom: 20),
                                    child: Center(child: Text('Due Date',style: TextStyle(fontFamily: 'jost',color: Colors.black, fontSize: 16,fontWeight: FontWeight.w700),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, bottom: 20),
                                    child: Center(child: Text('Description',style: TextStyle(fontFamily: 'jost',color: Colors.black, fontSize: 16,fontWeight: FontWeight.w700),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20, bottom: 20),
                                    child: Center(child: Text('KM/Hour',style: TextStyle(fontFamily: 'jost',color: Colors.black, fontSize: 16,fontWeight: FontWeight.w700),),),
                                  ),
                                ]),
                                TableRow(children :[
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('01/09/19',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('XYZ',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                ]),
                                TableRow(children :[
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                ]),
                                TableRow(children :[
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, bottom: 15),
                                    child: Center(child: Text('----',style: TextStyle(fontFamily: 'jost',color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),),
                                  ),
                                ]),
                              ]
                          ),
                        ),

                    Padding(
                      padding: EdgeInsets.all(160.0),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Preventive2()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(
                                      color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Release",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'jost',
                                      color: Colors.white,
                                    ),),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Performance()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(
                                      color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "Back", textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'jost',
                                      color: Colors.white,
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
}
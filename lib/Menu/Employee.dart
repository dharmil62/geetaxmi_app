import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/Menu/Emergency.dart';
import 'package:geetaxmi_app/Menu/Family.dart';
import 'package:geetaxmi_app/Menu/Identity.dart';
import 'package:geetaxmi_app/Menu/Return.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify2.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';

import 'Personal.dart';

class Employee extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black54,
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
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text("Material Activity", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white, fontFamily: 'jost',
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Container(
                          height: 100,
                          width: 160,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            border: new Border.all(color: Colors.white, width: 4.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child : FlatButton(
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  Return())),
                            },
                            color: Colors.blue,
                            padding: EdgeInsets.all(10.0),
                            child: Column( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.contact_mail, color: Colors.white, size: 40,),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                Text("Return", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, fontFamily: 'jost', color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),

                        Container(
                          height: 100,
                          width: 160,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            border: new Border.all(color: Colors.white, width: 4.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child : FlatButton(
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  SideDrawer())),
                            },
                            color: Colors.blue,
                            padding: EdgeInsets.all(10.0),
                            child: Column( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.call, color: Colors.white, size: 40,),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                Text("Requirement", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, fontFamily: 'jost', color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(150.0),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
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
                                    builder: (context) => SideDrawer()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: new Border.all(
                                      color: Colors.grey, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "Back", textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      fontFamily: 'jost',
                                      color: Colors.black,
                                    ),),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
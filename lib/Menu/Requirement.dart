import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/Menu/Emergency.dart';
import 'package:geetaxmi_app/Menu/Employee.dart';
import 'package:geetaxmi_app/Menu/Family.dart';
import 'package:geetaxmi_app/Menu/Identity.dart';
import 'package:geetaxmi_app/Menu/PerRequest.dart';
import 'package:geetaxmi_app/Menu/Process.dart';
import 'package:geetaxmi_app/Menu/ProcessReq.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify2.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';

import 'PerIssued.dart';
import 'Personal.dart';
import 'Return.dart';

class Requirement extends StatelessWidget {

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

                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text("Material Issue", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black, fontFamily: 'jost',
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    ListTile(
                      leading: Icon(Icons.contact_mail_rounded),
                      title: Text('Process Requirement'),
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  ProcessReq())),
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.call),
                      title: Text('Personal Requirement'),
                      onTap: () => {Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  PerRequest())),},
                    ),
                  ],
                ),

              ),
            ),


          ],
        ),
      ),
      bottomNavigationBar: new Container(
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          color: Color.fromRGBO(0, 0, 38, 1),
          child: new Row(
            // alignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                color:Colors.white,
                icon: Icon(
                  Icons.contact_mail_rounded,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Return()));
                },
              ),
              new IconButton(
                color:Colors.white,
                icon: Icon(
                  Icons.call,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Requirement()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
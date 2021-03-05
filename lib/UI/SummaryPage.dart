import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/LoginPage.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';

class SummaryPage extends StatelessWidget {

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
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: 'Summary. *'),
                    Padding(
                      padding: EdgeInsets.all(90.0),
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
                                showDialog(
                                  builder: (ctxt){
                                    return AlertDialog(
                                        title: Text("Logout",textAlign: TextAlign.center, style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, fontFamily: 'jost', color: Colors.white,
                                        ),),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("Do you Really want to logout?",textAlign: TextAlign.center, style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15, fontFamily: 'jost', color: Colors.black,
                                          ),),
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              RaisedButton(
                                                child: Text("Cancel"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              RaisedButton(
                                                child: Text("Logout"),
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(
                                                      builder: (context) => LoginPage()));
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                    context: context
                                );

                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.blue, width: 2.0),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("Logout",textAlign: TextAlign.center, style: TextStyle(
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
  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(label, style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white, fontFamily: 'jost',
          ),),
        ),

        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(20),
          child:Container(
            height: 200,
            child: TextField(
              obscureText: obscureText,
              maxLines: 10,
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




        SizedBox(height: 30),
      ],
    );
  }
}
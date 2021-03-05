import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/Menu/Personal.dart';

import 'package:geetaxmi_app/Menu/ProfileOTP.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify2.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Family.dart';
import 'Identity.dart';

class Emergency extends StatelessWidget {

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
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text("Emergency Contact Details", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black, fontFamily: 'jost',
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    makeInput(label: "Gender :                          "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Contact Person :           "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Relation :                        "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Contact No. :                 "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Email Address :             "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),

                    Padding(
                      padding: EdgeInsets.all(150.0),
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
                                    builder: (context) =>  Emergency2()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Edit",textAlign: TextAlign.center, style: TextStyle(
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
                                    builder: (context) =>   Personal()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Back",textAlign: TextAlign.center, style: TextStyle(
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
                  Icons.person,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Personal()));
                },
              ),
              new IconButton(
                color:Colors.white,
                icon: Icon(
                  Icons.contact_mail,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Identity()));
                },
              ),
              new IconButton(
                color:Colors.white,
                icon: Icon(
                  Icons.call,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Emergency()));
                },
              ),
              new IconButton(
                color:Colors.white,
                icon: Icon(
                  Icons.upload_rounded,
                ),
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
              new IconButton(
                color:Colors.white,
                icon: Icon(
                  Icons.receipt,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Family()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget makeInput({label, obscureText = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 40,),
        ),
        Text(label, style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black, fontFamily: 'jost',
        ),),
        SizedBox(
          height: 20,
          width: 140,
          child: TextField(
            style: TextStyle(
                fontFamily: 'jost', fontSize: 14
            ),
            enabled: false,
            obscureText: obscureText,
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
    );
  }

  Widget makeInput2({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(label, style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black, fontFamily: 'jost',
          ),),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child:Container(
            child: TextField(
              obscureText: obscureText,
              keyboardType: TextInputType.number,
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

        ),
      ],
    );
  }
}
class Emergency2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text("Emergency Contact Details", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black, fontFamily: 'jost',
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    makeInput(label: "Gender :                          "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Contact Person :           "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Relation :                        "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Contact No. :                 "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label: "Email Address :             "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),

                    Padding(
                      padding: EdgeInsets.all(150.0),
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
                                    builder: (context) => ProfileOTP()));
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
                                    "Change", textAlign: TextAlign.center,
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
                                    builder: (context) => Personal()));
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
                                    "Cancel", textAlign: TextAlign.center,
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

  Widget makeInput({label, obscureText = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 40,),
        ),
        Text(label, style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black, fontFamily: 'jost',
        ),),
        SizedBox(
          height: 20,
          width: 140,
          child: TextField(
            style: TextStyle(
                fontFamily: 'jost', fontSize: 14
            ),
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
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
        SizedBox(width: 10,),
      ],
    );
  }
}
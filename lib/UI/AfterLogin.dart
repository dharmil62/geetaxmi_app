import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/ChangeNumber.dart';
import 'package:geetaxmi_app/UI/LastReport.dart';
import 'package:geetaxmi_app/UI/RankPage.dart';

class AfterLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(30.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  RankPage()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text("Login Successful",textAlign: TextAlign.center, style: TextStyle(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("OR", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15, fontFamily: 'jost', color: Colors.white
                      ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  LastReport()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text("Validation Fail",textAlign: TextAlign.center, style: TextStyle(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
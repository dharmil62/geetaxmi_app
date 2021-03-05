import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geetaxmi_app/UI/LoginPage.dart';

class PasswordChange extends StatelessWidget {

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
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(30.0),
                  ),
                  Column(
                    children: <Widget>[
                      Text("New Password", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700, fontFamily: 'jost', color: Colors.black,
                      ), textAlign: TextAlign.center,),
                      SizedBox(height: 20,),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInput(label: "Enter New Password"),
                        makeInput(label: "Re-type New Password"),

                        Padding(
                          padding: EdgeInsets.all(20.0),
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
                                    Fluttertoast.showToast(
                                      msg: "Password reset Successfully",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIos: 2,
                                      backgroundColor: Colors.yellow,
                                      textColor: Colors.black,
                                      fontSize: 16.0,
                                    );

                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>  LoginPage()));
                                  },
                                  child: Container(
                                    height: 50,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      border: new Border.all(color: Colors.blue, width: 2.0),
                                      borderRadius: new BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text("Change",textAlign: TextAlign.center, style: TextStyle(
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
                                        builder: (context) =>  LoginPage()));
                                  },
                                  child: Container(
                                    height: 50,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      border: new Border.all(color: Colors.blue, width: 2.0),
                                      borderRadius: new BorderRadius.circular(10.0),
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
                          padding: EdgeInsets.all(30.0),
                        ),
                        Text(
                          "Note : Password must contain one uppercase letter, one lowercase letter, One numeric character and one special character", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14, fontFamily: 'jost', color: Colors.black
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                        ),
                        Text(
                          "Note : Minimum Password length should be 8 characters.", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14, fontFamily: 'jost', color: Colors.black
                        ),),
                      ],
                    ),
                  ),
                ],
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
          padding: EdgeInsets.only(left: 2),
          child: Text(label, style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black, fontFamily: 'jost',
          ),),
        ),



        Padding(
          padding: EdgeInsets.only(left: 2, top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                width: 270,
                child: TextField(
                  obscureText: obscureText,
                  maxLines: 1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
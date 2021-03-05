

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geetaxmi_app/UI/AfterLogin.dart';
import 'package:geetaxmi_app/UI/MobileLogin.dart';
import 'package:geetaxmi_app/UI/Passwordforgot.dart';

import 'AfterLogin.dart';
import 'MobileLogin.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black26,
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
                    padding: EdgeInsets.all(50.0),
                  ),
                  Column(
                    children: <Widget>[
                      Text("Login", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700, fontFamily: 'jost', color: Colors.white
                      ),),
                      SizedBox(height: 20,),
                      Text("Login to your account", style: TextStyle(
                          fontSize: 12,
                          color: Colors.white, fontFamily: 'jost', fontWeight: FontWeight.w300
                      ),),
                    ],
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(10.0),
                  // ),
                  // Container(
                  //   height: 210,
                  //   width: 350,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blueGrey,
                  //     borderRadius: new BorderRadius.circular(12.0),
                  //   ),
                  //   child: Image(
                  //     image: AssetImage("assets/xyz.png"),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                         makeInput(label: "Employee ID"),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                         makeInput(label: "Password", obscureText: true),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Padding(
                              padding: EdgeInsets.only(left: 165),
                              child: InkWell(
                                child: Text("Forgot Password?",
                                  style: TextStyle(fontWeight: FontWeight.w500,
                                      fontSize: 14, fontFamily: 'jost', color: Colors.white, decoration: TextDecoration.underline)),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordForgot()));
                                  // Navigator.push(context, MaterialPageRoute(
                                  //     builder: (context) => SignupPage()));
                                },
                              ),
                            ),
                          ],
                        ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
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
                                msg: "You have successfully Logged in",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIos: 2,
                                backgroundColor: Colors.blueGrey,
                                textColor: Colors.black,
                                fontSize: 14.0,
                              );
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  AfterLogin()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.blueGrey,
                                border: new Border.all(color: Colors.grey, width: 4.0),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              child: Center(
                                child: Text("Login",textAlign: TextAlign.center, style: TextStyle(
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
                                  builder: (context) =>  MobileLogin()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.blueGrey,
                                border: new Border.all(color: Colors.grey, width: 4.0),
                                borderRadius: new BorderRadius.circular(12.0),
                              ),
                              child: Center(
                                child: Text("Login With Mobile Number",textAlign: TextAlign.center, style: TextStyle(
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



        Padding(
          padding: EdgeInsets.only(left: 20, top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 35,
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
      ],
    );
  }
}

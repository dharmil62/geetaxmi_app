import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/MobileLogin.dart';
import 'package:geetaxmi_app/UI/PasswordChange.dart';

class PasswordForgot extends StatelessWidget {

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
                    padding: EdgeInsets.all(20.0),
                  ),
                  Column(
                    children: <Widget>[
                      Text("OTP Verification", textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700, fontFamily: 'jost', color: Colors.black
                      ),),
                      SizedBox(height: 10,),
                      Text("One Time Password Authentication", style: TextStyle(
                          fontSize: 12,
                          color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w400
                      ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0, top:40.0),
                    child: Text("One Time password was sent on your registered mobile number __________"
                      , style: TextStyle(
                          fontSize: 14,
                          color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w500
                      ),),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0, top:40.0),
                    child: Text("Note: If you don't have this mobile no. then contact Site App Administrator to reset password"
                      , style: TextStyle(
                          fontSize: 14,
                          color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w500
                      ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(30.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInput(label: "Enter the OTP sent to your registered mobile number"),
                        Padding(
                          padding: EdgeInsets.only(left: 200),
                          child: InkWell(
                            child: Text("Resend OTP?",
                                style: TextStyle(fontWeight: FontWeight.w500,
                                    fontSize: 14, fontFamily: 'jost', color: Colors.black, decoration: TextDecoration.underline)),
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(
                              //     builder: (context) => ChangeNumber()));
                            },
                          ),
                        ),
                      ],
                    ),
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only( right: 20.0),
                          child: InkWell(
                            onTap: (){

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  PasswordChange()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text("Verify",textAlign: TextAlign.center, style: TextStyle(
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
                              // Navigator.push(context, MaterialPageRoute(
                              //     builder: (context) =>  LastReport()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text("Call Admin",textAlign: TextAlign.center, style: TextStyle(
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
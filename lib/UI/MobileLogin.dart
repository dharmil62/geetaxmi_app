import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/ChangeNumber.dart';
import 'package:geetaxmi_app/UI/OTP.dart';
import 'package:geetaxmi_app/UI/PasswordChange.dart';

class MobileLogin extends StatelessWidget {

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
                      Text("Login", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700, fontFamily: 'jost', color: Colors.black
                      ),),
                      SizedBox(height: 20,),
                      Text("Login to your account by Validating your"
                          "Mobile Number", style: TextStyle(
                          fontSize: 12,
                          color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w300
                      ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInput(label: "Enter your current mobile number"),
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: InkWell(
                            child: Text("Change Mobile Number?",
                                style: TextStyle(fontWeight: FontWeight.w500,
                                    fontSize: 14, fontFamily: 'jost', color: Colors.black, decoration: TextDecoration.underline)),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ChangeNumber()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  OTPPage()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
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
            color: Colors.black, fontFamily: 'jost',
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
        Padding(
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
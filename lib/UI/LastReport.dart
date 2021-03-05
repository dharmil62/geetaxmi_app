import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastReport extends StatelessWidget {

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

                      Text("Last Shift Report Invalid", textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700, fontFamily: 'jost', color: Colors.black
                      ),),
                      Padding(
                        padding: EdgeInsets.only(left: 40.0, right: 40.0, top:60.0),
                        child: Text("You have not completed your shift report on dated ________. Please complete your last shift report prior to start your today task. You have to complete shift report within next one hour of shift end turn.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w500
                          ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.0, right: 40.0, top:40.0),
                        child: Text("Timely report not submitted count -----",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w500
                          ),),
                      ),

                    ],
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
                              // Navigator.push(context, MaterialPageRoute(
                              //     builder: (context) =>  LastReport()));
                            },
                            child: Container(
                              height: 40,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text("Complete Report",textAlign: TextAlign.center, style: TextStyle(
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
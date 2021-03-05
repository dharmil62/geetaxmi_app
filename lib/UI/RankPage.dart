import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/HomePage.dart';
import 'package:geetaxmi_app/UI/LastReport.dart';

class RankPage extends StatelessWidget {

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
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0, top:80.0),
                    child: Text("Your Last day Performance Rank is _______"
                      , style: TextStyle(
                          fontSize: 14,
                          color: Colors.black, fontFamily: 'jost', fontWeight: FontWeight.w500
                      ),),
                  ),
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
                                  builder: (context) =>  HomePage()));
                            },
                            child: Container(
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.black,
                                border: new Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text("Proceed",textAlign: TextAlign.center, style: TextStyle(
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
                    padding: EdgeInsets.all(200.0),
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
                                child: Text("Shift Val fail",textAlign: TextAlign.center, style: TextStyle(
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
                                child: Text("Geofence Val. fail",textAlign: TextAlign.center, style: TextStyle(
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
                    padding: EdgeInsets.all(5.0),
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
                                child: Text("Attendence Time Val.",textAlign: TextAlign.center, style: TextStyle(
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
                                child: Text("Eq. Validation fail",textAlign: TextAlign.center, style: TextStyle(
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
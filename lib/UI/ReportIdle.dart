import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Breakdown2.dart';

class ReportIdle extends StatefulWidget {
  _ReportIdleState createState() => _ReportIdleState();
}
class _ReportIdleState extends State<ReportIdle>{
  bool _value = false, _value2 = false, _value3 = false;


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
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Idle",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black, fontFamily: 'jost',
                                  ),
                                ),
                              ),
                              SizedBox(width: 5, ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _value = !_value;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: _value
                                        ? Icon(
                                      Icons.check_circle,
                                      color: Colors.black,
                                    )
                                        : Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Hindrance",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black, fontFamily: 'jost',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _value2 = !_value2;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: _value2
                                        ? Icon(
                                      Icons.check_circle,
                                      color: Colors.black,
                                    )
                                        : Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Break Time",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black, fontFamily: 'jost',
                                  ),
                                ),
                              ),
                              SizedBox(width: 5, ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _value3 = !_value3;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: _value3
                                        ? Icon(
                                      Icons.check_circle,
                                      color: Colors.black,
                                    )
                                        : Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    makeInput2(label:"Reason for Idle"),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    makeInput(label:"Comment"),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    makeInput2(label:"Responsible Department"),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    makeInput2(label:"Responsible Supervisor"),
                    Padding(
                      padding: EdgeInsets.all(10.0),
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
                                Fluttertoast.showToast(
                                  msg: "You have successfully declared Door No. _____ as idle on Date __-__-__ and Time _-_-_",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIos: 2,
                                  backgroundColor: Colors.blueGrey,
                                  textColor: Colors.black,
                                  fontSize: 14.0,
                                );
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  Performance()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Report Idle",textAlign: TextAlign.center, style: TextStyle(
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
                                    builder: (context) =>  Performance()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(label, style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black, fontFamily: 'jost',
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.mic, color: Colors.black,),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child:Container(
            height: 100,
            width: 320,
            child: TextField(
              obscureText: obscureText,
              maxLines: 4,
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

  Widget makeInput2({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black, fontFamily: 'jost',
          ),),
        ),


        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                width: 320,
                child: TextField(
                  obscureText: obscureText,
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
              Icon(Icons.arrow_drop_down, color: Colors.black,),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/Breakdown.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/EndWarning.dart';
import 'package:geetaxmi_app/UI/Idle.dart';
import 'package:geetaxmi_app/UI/Insdate.dart';
import 'package:geetaxmi_app/UI/Modify.dart';
import 'package:geetaxmi_app/UI/Preventive.dart';
import 'package:geetaxmi_app/UI/Production.dart';
import 'package:geetaxmi_app/UI/RequestFuel.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';

class Performance extends StatelessWidget {

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only( right: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  Breakdown()));
                      },
                      child: Container(
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.black,
                          border: new Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text("Report Prb.",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only( right: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Idle()));
                      },
                      child: Container(
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.black,
                          border: new Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text("Report Idle",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only( right: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  RequestFuel()));
                      },
                      child: Container(
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.black,
                          border: new Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text("Request Fuel",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Preventive()));
                      },
                      child: Container(
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.black,
                          border: new Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text("Preventive Main",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  Insdate()));
                      },
                      child: Container(
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.black,
                          border: new Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text("Ins. & RTO",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  Production()));
                      },
                      child: Container(
                        height: 40,
                        decoration: new BoxDecoration(
                          color: Colors.black,
                          border: new Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text("End Shift",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
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
                    makeInput(label:"Door No. :                     "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Eq. Class :                    "),
                        Icon(Icons.location_on, color:Colors.black ,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Supervisor :                 "),
                        Icon(Icons.phone, color:Colors.black ,)
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Shift InCharge :           "),
                        Icon(Icons.phone, color:Colors.black ,)
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Area :                            "),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Sub Area :                    "),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Activity :                       "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Sub Activity :               "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"PRD Material :             "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Bench :                         "),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Unload Bench :           "),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Primary Eq. :               "),

                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Sec Eq. :                       "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60, right: 60),
                      child: Container(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border(
                            bottom: BorderSide(color: Colors.white),
                            top: BorderSide(color: Colors.white),
                            left: BorderSide(color: Colors.white),
                            right: BorderSide(color: Colors.white),
                          ),
                        ),
                        child: MaterialButton(
                          height: 40,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>  Modify()));
                          },
                          color: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text("Modify Work", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14, fontFamily: 'jost', color: Colors.white,
                          ),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Rep. Prb. Month : "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text("PERFORMANCE",textAlign: TextAlign.center, style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18, fontFamily: 'jost', color: Colors.black,
                            ),),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            makeInput(label:"Can Trip :          "),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Text("🙂",textAlign: TextAlign.center, style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 100, fontFamily: 'jost', color: Colors.black,
                              ),),
                            ),
                          ],
                        ),
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
                                    builder: (context) =>  EndWarning()));
                              },
                              child: Container(
                                height: 40,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.blue, width: 2.0),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("End Shift",textAlign: TextAlign.center, style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14, fontFamily: 'jost', color: Colors.white,
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 40,),
        ),
        Text(label, style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black, fontFamily: 'jost',
        ),),
        SizedBox(
          height: 20,
          width: 140,
          child: TextField(
            style: TextStyle(
                fontFamily: 'jost', fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black
            ),
            enabled: false,
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blue,
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
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Measures.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';

class Production extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
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
                    makeInput(label:"Door No. :            "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Eq. Class :           "),
                        Icon(Icons.location_on, color:Colors.black ,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Supervisor :        "),
                        Icon(Icons.phone, color:Colors.black ,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Shift InCharge :  "),
                        Icon(Icons.phone, color:Colors.black ,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
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
                            fontSize: 16, fontFamily: 'jost', color: Colors.black,
                          ),),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 50,),
                                  ),
                                  Text("Hour m. Start :  ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 140,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
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
                                  SizedBox(width: 10, ),
                                ],
                              ),

                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 50,),
                                  ),
                                  Text("Km. Start :         ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 140,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
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
                                  SizedBox(width: 10, ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                          const Divider(
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 50,),
                                  ),
                                  Text("Hour m. Start :  ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 140,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
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
                                  SizedBox(width: 10, ),
                                ],
                              ),
                              Icon(Icons.camera_alt, color:Colors.red ,)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 50,),
                                  ),
                                  Text("Km. Start :         ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 140,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
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
                                  SizedBox(width: 10, ),
                                ],
                              ),
                              Icon(Icons.camera_alt, color:Colors.red ,)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                        ],
                      ),
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
                          Text("PRODUCTION",textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16, fontFamily: 'jost', color: Colors.black,
                          ),),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 50,),
                                  ),
                                  Text("Trip :                  ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red, fontFamily: 'jost',
                                  ),),
                                  SizedBox(
                                    height: 20,
                                    width: 140,
                                    child: TextField(
                                      style: TextStyle(
                                          fontFamily: 'jost', fontSize: 14
                                      ),
                                      enabled: false,
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
                                  SizedBox(width: 10, ),
                                ],
                              ),

                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only( right: 10.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  Measures()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.blue, width: 2.0),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("End Shift",textAlign: TextAlign.center, style: TextStyle(
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
                            padding: EdgeInsets.only( right: 10.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  Production()));
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
          padding: EdgeInsets.only(left: 50,),
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
                fontFamily: 'jost', fontSize: 14
            ),
            enabled: false,
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
        SizedBox(width: 10, ),
      ],
    );
  }
}
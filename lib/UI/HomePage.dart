import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {

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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Supervisor :        "),
                        IconButton(icon: Icon(Icons.phone), color:Colors.black , onPressed: _makingPhoneCall,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        makeInput(label: "Shift InCharge :  "),
                        IconButton(icon: Icon(Icons.phone), color:Colors.black , onPressed: _makingPhoneCall,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Area :                   "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Sub Area :           "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Activity :              "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Sub Activity :      "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"PRD Material :    "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Bench :                "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Unload Bench :  "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Primary Eq. :      "),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput(label:"Sec Eq. :             "),
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
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  CheckPage()));
                              },
                              child: Container(
                                height: 40,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.blue, width: 2.0),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text("Okay & Next",textAlign: TextAlign.center, style: TextStyle(
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
  _makingPhoneCall() async {
    const url = 'tel:9876543210';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
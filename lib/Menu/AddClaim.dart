import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetaxmi_app/Menu/Employee.dart';
import 'package:geetaxmi_app/Menu/Return.dart';
import 'package:geetaxmi_app/UI/CheckPage.dart';
import 'package:geetaxmi_app/UI/Modify.dart';
import 'package:geetaxmi_app/UI/Performance.dart';
import 'package:geetaxmi_app/Widgets/SideDrawer.dart';
import 'package:geetaxmi_app/Widgets/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ProcessReq.dart';



class AddClaim extends StatelessWidget {

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
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Text("TA/DA Claim",textAlign: TextAlign.center, style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16, fontFamily: 'jost', color: Colors.black,
                      ),),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    // Container(
                    //   margin: const EdgeInsets.all(10.0),
                    //   padding: const EdgeInsets.all(5.0),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.black),
                    //       borderRadius: new BorderRadius.circular(5.0)
                    //   ),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: <Widget>[
                    //       Text("Search Material",textAlign: TextAlign.center, style: TextStyle(
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 14, fontFamily: 'jost', color: Colors.black,
                    //       ),),
                    //       Icon(Icons.search, color: Colors.black,)
                    //     ],
                    //   ),
                    //   // child: Column(
                    //   //   children: <Widget>[
                    //   //
                    //
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Quantity :                          '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Description :                     '),
                    //
                    //
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Maintenance Order :       '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     const Divider(
                    //   //       color: Colors.black54,
                    //   //     ),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Material Code :                '),
                    //
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Description :                     '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Issue Date :                      '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Door No. :                         '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //     makeInput2(label: 'Maintenance Order :       '),
                    //   //     Padding(
                    //   //       padding: EdgeInsets.all(5.0),
                    //   //     ),
                    //   //   ],
                    //   // ),
                    // ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),

                    makeInput2(label: 'Type of Expense :                 '),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput2(label: 'Expense details :                   '),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput2(label: 'Expense amount :                 '),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    makeInput2(label: 'Expense date :                       '),
                    Padding(
                      padding: EdgeInsets.all(160.0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
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
                                  msg: "You have successfully raised TA/DA Claim.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIos: 2,
                                  backgroundColor: Colors.blueGrey,
                                  textColor: Colors.black,
                                  fontSize: 14.0,
                                );
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>  SideDrawer()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Add New Claim",textAlign: TextAlign.center, style: TextStyle(
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
                                    builder: (context) =>  SideDrawer()));
                              },
                              child: Container(
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  border: new Border.all(color: Colors.white, width: 4.0),
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: Center(
                                  child: Text("Back",textAlign: TextAlign.center, style: TextStyle(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(label, style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black, fontFamily: 'jost',
              ),),
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          padding: EdgeInsets.only(left: 20, ),
          child: Row(
            children: <Widget>[
              Container(
                height: 20,
                width: 100,
                child: TextField(
                  obscureText: obscureText,
                  maxLines: 1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
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

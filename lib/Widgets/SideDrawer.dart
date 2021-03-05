import 'package:flutter/material.dart';
import 'package:geetaxmi_app/Menu/AppVersion.dart';
import 'package:geetaxmi_app/Menu/CompanyInfo.dart';
import 'package:geetaxmi_app/Menu/Employee.dart';
import 'package:geetaxmi_app/Menu/Grievance.dart';
import 'package:geetaxmi_app/Menu/Holiday.dart';
import 'package:geetaxmi_app/Menu/KPI.dart';
import 'package:geetaxmi_app/Menu/Legal.dart';
import 'package:geetaxmi_app/Menu/LoanReq.dart';
import 'package:geetaxmi_app/Menu/OverTime.dart';
import 'package:geetaxmi_app/Menu/PFBalance.dart';
import 'package:geetaxmi_app/Menu/Personal.dart';
import 'package:geetaxmi_app/Menu/Return.dart';
import 'package:geetaxmi_app/Menu/ShiftChange.dart';
import 'package:geetaxmi_app/Menu/TAClaim.dart';
import 'package:geetaxmi_app/Menu/TrainingReq.dart';
import 'package:geetaxmi_app/UI/Production.dart';

class SideDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    top: 20,
                    child: IconButton(
                      icon: Icon(Icons.menu, color: Colors.white,),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 34,
                    child: Text("User Code", style: TextStyle(fontFamily: 'jost', fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),),
                  ),
                  Positioned(
                    left: 10,
                    top: 90,
                    child: Text("User Name", style: TextStyle(fontFamily: 'jost', fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
                  ),
                  Positioned(
                    right: 5,
                    height: 110,
                    child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage("assets/contact.png"),
                  ),
                  ),

                ],
              ),
            ),

            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 1500,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Personal Information'),
                      onTap: () => {
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>  Personal())),
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.border_color),
                      title: Text('Leave Status'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Icon(Icons.timer),
                      title: Text('Over Time'),
                      onTap: () => {Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  OverTime())),},
                    ),
                    ListTile(
                      leading: Icon(Icons.update),
                      title: Text('Roaster'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Shift Change Request'),
                      onTap: () => {
                        {Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  ShiftChange())),},
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Holiday Calender'),
                      onTap: () => {
                        {Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  Holiday())),},
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.save_alt),
                      title: Text('Salary Slip Download'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Icon(Icons.accessibility),
                      title: Text('Employee Belongings'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  Return())),},},
                    ),
                    ListTile(
                      leading: Icon(Icons.format_list_numbered),
                      title: Text('KPI and Rank'),
                      onTap: () => {
                        {Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  KPI())),},
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.attach_money),
                      title: Text('PF Balance'),
                      onTap: () => {
                        {Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  PFBalance())),},
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.receipt),
                      title: Text('Loan Requirement'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  LoanReq())),},},
                    ),
                    ListTile(
                      leading: Icon(Icons.perm_data_setting),
                      title: Text('TA/DA Claim'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  TAClaim())),},},
                    ),
                    ListTile(
                      leading: Icon(Icons.new_releases),
                      title: Text('Training Requirement'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  TrainingReq())),},},
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Icon(Icons.grid_on),
                      title: Text('Grievance'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  Grievance())),},},
                    ),
                    ListTile(
                      leading: Icon(Icons.group_add),
                      title: Text('Referral Program'),
                      onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Text('Legal Agreement'),
                      onTap: () => {
                        {Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  Legal())),},
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.system_update),
                      title: Text('App Version'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  AppVersion())),},},
                    ),
                    ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text('Company Information'),
                      onTap: () => {{Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  CompanyInfo())),},},
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

}
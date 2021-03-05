
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geetaxmi_app/UI/LoginPage.dart';
import 'package:animated_splash/animated_splash.dart';
void main() {
  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };
  Map<int, Widget> op = {1: LoginPage(), 2: MaterialApp()};
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplash(
          imagePath: 'assets/anim.png',
          home: LoginPage(),
          customFunction: duringSplash,
          duration: 2500,
          type: AnimatedSplashType.BackgroundProcess,
          outputAndHome: op,
        ),
        theme: ThemeData(
            fontFamily: 'jost'
        ),
      )
  );
}
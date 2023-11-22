// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_task2/view/splashscreen.dart';
// import 'package:ui_task2/view/splashscreen.dart';
import 'package:ui_task2/view/welcomescreen/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
    },);
  }
}


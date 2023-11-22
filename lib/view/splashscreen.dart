// ignore_for_file: camel_case_types, prefer_const_constructors, annotate_overrides

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_task2/view/welcomescreen/screen1.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override

  void initState() {
    Timer(Duration(seconds: 5), () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen1(), )));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/grid.png',fit: BoxFit.cover,),
      
    );
  }
}
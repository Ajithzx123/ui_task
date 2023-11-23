// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Text('My Wallet',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w800),)
            ],
          ),
        ),
      ) ,
    );
  }
}
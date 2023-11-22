// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_task2/view/welcomescreen/screen2.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue;

    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen2(),)),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.asset('assets/Logo 1.png'),
                    Spacer(),
                    Text(
                      'Login',
                      style: GoogleFonts.zillaSlab(
                          textStyle: Theme.of(context).textTheme.headlineMedium,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: primarycolor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Group 4.png',
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Image.asset('assets/pro.png'),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Grow your investments with treyd trading\ntools built for you.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        textStyle: Theme.of(context).textTheme.headlineSmall,
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Image.asset('assets/Frame 5.png'),
                  SizedBox(
                    height: 12.h,
                  ),
                  Image.asset('assets/Bbuttons.png'),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: primarycolor, fontSize: 18),
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

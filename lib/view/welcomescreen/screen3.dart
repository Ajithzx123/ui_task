// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Group 9.png',
          ),
          SizedBox(
            height: 9.h,
          ),
          Image.asset('assets/Start Growing.png'),
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
        ],
      ),
    );
  }
}

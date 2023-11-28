// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyWalletTile extends StatelessWidget {
  const MyWalletTile({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size.height * 0.23;

    return Stack(
      children:[ Container(
        height: screensize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Padding(
          padding:  EdgeInsets.all(3.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text('My Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:  MediaQuery.of(context).size.width*0.06,
                          fontWeight: FontWeight.w500)),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(100, 171, 203, 229),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03,vertical:  MediaQuery.of(context).size.height*0.01),
                        
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'USD',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                          ),
                         
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text('6534.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:  MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxTile(name: 'Deposit'),
                  // SizedBox(width: 20,),
                  BoxTile(name: 'Deposit'),
                  // SizedBox(width: 20,),
                  BoxTile(name: 'Deposit')
                ],
              )
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 1,
        child: Image.asset('assets/Group 2.png'))
      ]
    );
  }
}

class BoxTile extends StatelessWidget {
  final String name;
  // var  icon;

  const BoxTile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  MediaQuery.of(context).size.width*0.25,
      height:  MediaQuery.of(context).size.height*0.05,
      decoration: BoxDecoration(
          color: Color.fromARGB(100, 171, 203, 229),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(2.5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.01,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

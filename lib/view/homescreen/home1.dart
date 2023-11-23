// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:ui_task2/controller/themeController.dart';
import 'package:ui_task2/widgets/container_tile.dart';
import 'package:ui_task2/widgets/graph_tile.dart';

class Home1 extends StatelessWidget {
  Home1({super.key});

  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color.fromARGB(88, 158, 158, 158)),
                        child: Image.asset(
                          'assets/Group.png',
                          width: 50,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/Profile.png'),
                    InkWell(
                        onTap: () {
                          themeController.toggleTheme();
                        },
                        child: Image.asset('assets/Profile (1).png'))
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Stack(
                  children: [
                    Container(
                      height: 23.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(207, 33, 149, 243),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                        top: 20,
                        left: 30,
                        child: Text(
                          'My Wallet',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        )),
                    Positioned(
                      bottom: 0,
                      left: 32.w,
                      right: 0,
                      height: 250,
                      child: Row(
                        children: [
                          Text(
                            new String.fromCharCodes(new Runes('\u0024')),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('8540.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Positioned(
                        top: 20,
                        right: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(100, 171, 203, 229),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 10, bottom: 5, right: 10),
                            child: Row(
                              children: [
                                Text(
                                  'USD',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: Image.asset('assets/Group 2.png')),
                    Positioned(
                        bottom: 20,
                        left: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(100, 171, 203, 229),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 10, bottom: 5, right: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.swap_horiz_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Transfer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 20,
                        right: 32.w,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(100, 171, 203, 229),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 10, bottom: 5, right: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.swap_horiz_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Deposit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 20,
                        right: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(100, 171, 203, 229),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 10, bottom: 5, right: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.swap_horiz_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Swap',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Image.asset('assets/Frame 419.png'),
                      ),
                    ),
                    Positioned(
                        left: 0, child: Image.asset('assets/Group 4 (1).png')),
                    Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset('assets/Group 3.png'))
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text('Recommended',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(8, 158, 158, 158),
                          // boxShadow: kElevationToShadow[20],
                          borderRadius: BorderRadius.circular(20)),
                      height: 15.h,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.amber[600],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('BNB',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Graphtile()
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '+1.37',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  '216.3',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(8, 158, 158, 158),
                          // boxShadow: kElevationToShadow[0],
                          borderRadius: BorderRadius.circular(20)),
                      height: 15.h,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.indigo[700],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('ADL',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Graphtile()
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '+2.37',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  '0.4216',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text('My Assets',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    ContainerTile(
                      name: 'Bitcoin',
                      amt: 65237,
                      btc: '0.0000BTC',
                      percentage: '4.5%',
                      color: Colors.amber,
                    ),
                    SizedBox(height: 2.h,),
                    ContainerTile(
                      name: 'T',
                      amt: 65237,
                      btc: '0.0000BTC',
                      percentage: '4.5%',
                      color: Colors.amber,
                    ),


                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

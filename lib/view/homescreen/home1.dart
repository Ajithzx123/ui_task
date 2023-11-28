// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_task2/controller/themeController.dart';
import 'package:ui_task2/widgets/container_tile.dart';
import 'package:ui_task2/widgets/my_wallet_tile.dart';
import 'package:ui_task2/widgets/status_tile.dart';

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
                MyWalletTile(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StatusTile(),
                        StatusTile(),
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
                    SizedBox(
                      height: 2.h,
                    ),
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

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_task2/controller/onboardController.dart';
import 'package:ui_task2/view/homescreen/dashboard.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController pageController = PageController(initialPage: 0);
  final OnboardController controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    Color primarycolor = const Color.fromARGB(207, 33, 149, 243);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
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
              height: 5.h,
            ),
            Expanded(child: Obx(() {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    PageView.builder(
                      onPageChanged: (index) {
                        controller.selectedindex.value = index;
                      },
                      itemCount: controller.pages.length,
                      itemBuilder: (context, index) {
                        return controller
                            .pages[index % controller.pages.length];
                      },
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 80,
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                controller.pages.length,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Container(
                                        width: controller.selectedindex.value ==
                                                index
                                            ? 22
                                            : 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: controller
                                                        .selectedindex.value ==
                                                    index
                                                ? primarycolor
                                                : Colors.grey),
                                      ),
                                    )),
                          ),
                        ))
                  ],
                ),
              );
            })),
            SizedBox(
              height: 20.h,
              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        Get.offAll(Dashboard());
                      }, child: Image.asset('assets/Bbuttons.png')),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: primarycolor),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

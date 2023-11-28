// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:ui_task2/view/welcomescreen/screen1.dart';
import 'package:ui_task2/view/welcomescreen/screen2.dart';
import 'package:ui_task2/view/welcomescreen/screen3.dart';

class OnboardController extends GetxController {
  final RxList<Widget> pages = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ].obs;
  RxInt selectedindex = 0.obs;



}
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_task2/widgets/graph_tile.dart';

class ContainerTile extends StatelessWidget {
 final String name;
 final int amt;
  final String percentage;
  String btc;
  Color color;
  ContainerTile(
      {super.key,
      required this.name,
      required this.amt,
      required this.btc,
      required this.percentage,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      decoration: BoxDecoration(
          color: Color.fromARGB(8, 158, 158, 158),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: color,
                ),
                SizedBox(
                  width: 2.h,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  amt.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Graphtile(),
                Text(percentage,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.green)),
                Spacer(),
                Text(btc,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.grey))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

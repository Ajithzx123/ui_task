// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task2/widgets/graph_tile.dart';

class StatusTile extends StatelessWidget {
  const StatusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
          color: Color.fromARGB(8, 158, 158, 158),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02,
          bottom: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          // mainAxisAlignment: MainAxissAlignment.start,
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
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Graphtile()
              ],
            ),
            Row(
              children: [
                Text(
                  '+1.37',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                Spacer(),
                Text(
                  '216.3',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

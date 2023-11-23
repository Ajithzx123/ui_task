import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromARGB(88, 158, 158, 158)
                      ),
                      child: Image.asset('assets/Group.png',width: 50,),
                    ),
                  ),
                  Spacer(),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
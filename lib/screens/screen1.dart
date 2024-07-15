import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //color: Colors.white,
      children: [
        Image.asset('assets/3.png'),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Pick Yoga Classes For Your Schedule And Level",
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "See more ideas about yoga fitness, yoga inspiration, yoga poses",
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 16, /*fontWeight: FontWeight.bold*/
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

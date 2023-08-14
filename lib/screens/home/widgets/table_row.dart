import 'package:flutter/material.dart';

Widget tableRow() {
  return Column(children: [
    Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "Today",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF296E97),
          ),
        ),
        const Text(
          "22-23",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF296E97),
          ),
        ),
        SizedBox(
            height: 60, width: 60, child: Image.asset("assets/raining.png"))
      ]),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 19),
      child: Divider(
        color: Color(0xFF858C93),
        thickness: 1,
      ),
    ),
  ]);
}

import 'package:flutter/material.dart';

class LeftSection extends StatelessWidget {
  const LeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dehli",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Text(
          "My Location",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          "Rain",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

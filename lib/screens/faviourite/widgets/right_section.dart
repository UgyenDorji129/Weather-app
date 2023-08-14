import 'package:flutter/material.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "25",
          style: TextStyle(
              fontSize: 48, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        Row(
          children: [
            Text(
              "H: 12",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "L: 22",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}

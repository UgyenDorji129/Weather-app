import 'package:flutter/material.dart';

class UserRow extends StatelessWidget {
  const UserRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            "Email ID-",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF296E97),
            ),
          ),
          Text(
            "ugyendora@gmail.com",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xFF296E97),
            ),
          ),
        ]),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 19),
        child: Divider(
          color: Color(0xFF858C93),
          thickness: 1,
        ),
      ),
    ]);
  }
}

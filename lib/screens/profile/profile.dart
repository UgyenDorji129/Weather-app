import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/profile/widgets/user_container.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      width: double.infinity,
      child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Profile",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF165174)),
        ),
        SizedBox(
          height: 32,
        ),
        UserContainer()
      ]),
    );
  }
}

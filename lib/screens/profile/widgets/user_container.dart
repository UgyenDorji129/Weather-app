import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/profile/widgets/signout_button.dart';
import 'package:flutter_boilerplate/screens/profile/widgets/user_row.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 200, 242, 255),
            radius: 50.0,
            backgroundImage: AssetImage("assets/user.png"),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Ugyen Dorji",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF165174)),
          ),
          Container(
              height: 350,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 54),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 182, 222, 245),
                        spreadRadius: 4,
                        blurRadius: 12,
                        offset: Offset(11, 0))
                  ],
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 185, 184, 184)),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [UserRow(), UserRow(), UserRow(), SignoutButton()],
              ))
        ],
      ),
    );
  }
}

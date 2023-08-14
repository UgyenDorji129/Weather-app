import 'package:flutter/material.dart';

class ToggleLink extends StatelessWidget {
  const ToggleLink({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Doesn't Have an Account? ",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Text(
          "Sign-up",
          style: TextStyle(
              color: Color(0xff449DD1),
              fontSize: 15,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

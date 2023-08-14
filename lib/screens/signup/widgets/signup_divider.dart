import 'package:flutter/material.dart';

class SignupDivider extends StatelessWidget {
  const SignupDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: Divider(
          color: Color(0xFF858C93),
          thickness: 1,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Or Sign-in With',
          style: TextStyle(color: Color(0xFF858C93), fontSize: 12),
        ),
      ),
      Expanded(
        child: Divider(
          color: Color(0xFF858C93),
          thickness: 1,
        ),
      )
    ]);
  }
}

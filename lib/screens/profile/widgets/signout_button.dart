import 'package:flutter/material.dart';

class SignoutButton extends StatelessWidget {
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xFF449DD1),
          boxShadow: const [
            BoxShadow(color: Color(0x4DA0D0FF), spreadRadius: 2),
          ],
          border: Border.all(
            width: 0.15,
            color: const Color(0xffADB5BD),
          ),
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/");
          },
          child: const Text("SIGN-OUT",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white))),
    );
  }
}

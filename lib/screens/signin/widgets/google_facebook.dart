import 'package:flutter/material.dart';

class SocialSigin extends StatelessWidget {
  const SocialSigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  width: 0.6, color: const Color.fromARGB(115, 177, 174, 174)),
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("assets/google.png"),
              const Text(
                "Google",
                style: TextStyle(fontSize: 16),
              )
            ]),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  width: 0.6, color: const Color.fromARGB(115, 177, 174, 174)),
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("assets/facebook.png"),
              const Text(
                "Facebook",
                style: TextStyle(fontSize: 16),
              )
            ]),
          ),
        )
      ],
    );
  }
}

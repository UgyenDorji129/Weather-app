import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157,
      width: 163,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Rainfall",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF165174),
                  )),
              Text("33",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF449DD1),
                  )),
              Text("22mm Expected",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6A6A6A),
                  ))
            ]),
      ),
    );
  }
}

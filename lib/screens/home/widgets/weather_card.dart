import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String time;
  final String weather;
  final String temperature;
  const WeatherCard(
      {super.key,
      required this.time,
      required this.weather,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 73,
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xffFFFFFF), Color.fromARGB(255, 168, 215, 241)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          border: time == "Now"
              ? Border.all(
                  width: 1,
                  color: Colors.white,
                )
              : null,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          time,
          style: const TextStyle(fontSize: 14, color: Color(0xFF2F88BB)),
          textAlign: TextAlign.center,
        ),
        Image.asset("assets/raining.png"),
        Text(
          temperature,
          style: const TextStyle(
              color: Color(0xff459ED1),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        )
      ]),
    );
  }
}

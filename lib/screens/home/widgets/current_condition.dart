import 'package:flutter/material.dart';

class CurrentCondition extends StatelessWidget {
  final String locationName;
  final String temperature;
  final String weather;
  final String humidity;
  final String lowTemperature;
  const CurrentCondition(
      {super.key,
      required this.humidity,
      required this.locationName,
      required this.lowTemperature,
      required this.temperature,
      required this.weather});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          locationName,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          temperature,
          style: const TextStyle(
              color: Colors.white, fontSize: 96, fontWeight: FontWeight.w700),
        ),
        Text(
          weather,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Text(
              "H: $humidity",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              width: 22,
            ),
            Text(
              "L: $lowTemperature",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}

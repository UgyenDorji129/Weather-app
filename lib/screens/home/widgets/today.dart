import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/home/widgets/weather_card.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 17),
      height: 183,
      width: double.infinity,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 12),
              child: const Text(
                "Today",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF165174),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                  WeatherCard(
                      time: "12:00", weather: "Rain", temperature: "23"),
                  WeatherCard(
                      time: "1: 00", weather: "Rain", temperature: "24"),
                  WeatherCard(
                      time: "2 :00", weather: "Rain", temperature: "26"),
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                  WeatherCard(time: "Now", weather: "Rain", temperature: "25"),
                ]),
              ),
            )
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/home/widgets/current_condition.dart';
import 'package:flutter_boilerplate/screens/home/widgets/detail_view.dart';
import 'package:flutter_boilerplate/screens/home/widgets/weekly_forcast.dart';

import 'styles/background_image_style.dart';
import 'widgets/today.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 253,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 46),
            decoration: backgroundImageDecoration(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/raining.png"),
                  const CurrentCondition(
                    locationName: "New Dehli",
                    temperature: "24",
                    lowTemperature: "20",
                    humidity: "45",
                    weather: "Rain",
                  ),
                ]),
          ),
          const Today(),
          const DetailView(),
          const WeeklyForcast()
        ],
      ),
    );
  }
}

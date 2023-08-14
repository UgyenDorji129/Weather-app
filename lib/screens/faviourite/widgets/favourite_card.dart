import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/faviourite/widgets/left_section.dart';
import 'package:flutter_boilerplate/screens/faviourite/widgets/right_section.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      height: 110,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 129, 195, 233), BlendMode.saturation),
            image: AssetImage('assets/background_cloudy.png'),
            fit: BoxFit.fill,
            opacity: 0.3),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [LeftSection(), RightSection()],
      ),
    );
  }
}

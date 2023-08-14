import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/search/widgets/search_bar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 1,
      child: Column(children: [
        MySearchBar(),
        const Text(
          '"Discover the\nWeather of Your\nFavourite\nPlaces"',
          style: TextStyle(
            fontSize: 40,
            color: Color(0xFF449DD1),
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            wordSpacing: 5,
          ),
        )
      ]),
    );
  }
}

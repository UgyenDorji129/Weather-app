import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/faviourite/widgets/favourite_card.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 22),
        width: double.infinity,
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Favourites",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF165174)),
              ),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
              FavouriteCard(),
            ]),
      ),
    );
  }
}

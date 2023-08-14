import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 44, horizontal: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () => _searchController.clear(),
            ),
            prefixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}

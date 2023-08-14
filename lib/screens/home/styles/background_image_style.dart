import 'package:flutter/material.dart';

BoxDecoration backgroundImageDecoration() {
  return const BoxDecoration(
    border: null,
    boxShadow: [
      BoxShadow(
          color: Color(0xff449DD1),
          spreadRadius: 60,
          blurRadius: 60,
          offset: Offset(11, 0))
    ],
    image: DecorationImage(
        colorFilter: ColorFilter.mode(Color(0xff449DD1), BlendMode.saturation),
        image: AssetImage('assets/raining_gif.gif'),
        fit: BoxFit.fill,
        opacity: 0.3),
  );
}

import 'package:flutter/material.dart';

InputDecoration formStyle(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: Color(0xff858C93)),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.greenAccent, width: 0.15),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 162, 166, 170),
        width: 0.15,
      ),
    ),
  );
}

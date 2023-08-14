import 'package:flutter/material.dart';

import 'table_row.dart';

class WeeklyForcast extends StatelessWidget {
  const WeeklyForcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 703,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: const Text("Weekly Forcast",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF165174))),
          ),
          Container(
              height: 600,
              margin: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFFFFF),
                      Color.fromARGB(255, 168, 215, 241)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  border: null,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tableRow(),
                  tableRow(),
                  tableRow(),
                  tableRow(),
                  tableRow(),
                  tableRow(),
                  tableRow()
                ],
              ))
        ]));
  }
}

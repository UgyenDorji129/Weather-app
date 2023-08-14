import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/faviourite/favourite.dart';
import 'package:flutter_boilerplate/screens/home/home.dart';
import 'package:flutter_boilerplate/screens/profile/profile.dart';
import 'package:flutter_boilerplate/screens/search/search.dart';

class MainPageWrapper extends StatefulWidget {
  const MainPageWrapper({super.key});

  @override
  State<MainPageWrapper> createState() => _MainPageWrapperState();
}

class _MainPageWrapperState extends State<MainPageWrapper> {
  int _currentIndex = 0;
  final List<Widget> pages = [
    const Home(),
    const Search(),
    const Favourite(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: pages[_currentIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(80))),
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                backgroundColor: Colors.white,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                iconSize: 26,
                selectedItemColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Container(
                        height: 50,
                        width: 50,
                        decoration: _currentIndex == 0
                            ? const BoxDecoration(
                                color: Color(0xff449DD1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)))
                            : const BoxDecoration(),
                        child: const Icon(
                          Icons.home_outlined,
                        )),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        height: 50,
                        width: 50,
                        decoration: _currentIndex == 1
                            ? const BoxDecoration(
                                color: Color(0xff449DD1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)))
                            : const BoxDecoration(),
                        child: const Icon(
                          Icons.search_outlined,
                        )),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        height: 50,
                        width: 50,
                        decoration: _currentIndex == 2
                            ? const BoxDecoration(
                                color: Color(0xff449DD1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)))
                            : const BoxDecoration(),
                        child: const Icon(
                          Icons.favorite_outline,
                        )),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        height: 50,
                        width: 50,
                        decoration: _currentIndex == 3
                            ? const BoxDecoration(
                                color: Color(0xff449DD1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80)))
                            : const BoxDecoration(),
                        child: const Icon(
                          Icons.person_outline,
                        )),
                    label: '',
                  ),
                ],
              ),
            )));
  }
}

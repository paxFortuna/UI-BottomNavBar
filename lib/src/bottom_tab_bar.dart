import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/search/search.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_index],

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },

            backgroundColor: const Color.fromARGB(255, 227, 227, 227),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bx_home_circle),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bx_search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bxs_user),
                label: 'Profile',
              )
            ]));
  }
}
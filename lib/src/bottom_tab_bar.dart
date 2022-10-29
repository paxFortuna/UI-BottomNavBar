import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'pages/home/home.dart';
import 'pages/on_boarding/on_board_screen.dart';
import 'pages/search/search.dart';
import 'pages/share/share_image_link.dart';

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
    ShareImageAndLink(),
    OnBoardingScreen(),
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

            //backgroundColor: const Color.fromARGB(255, 227, 227, 227),
            backgroundColor: Colors.grey.shade400,
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
                icon: Icon(Boxicons.bx_user),
                label: 'Share',
              ),
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bxs_backpack),
                label: 'OnBoard',
              )
            ]));
  }
}
import 'package:flutter/material.dart';
import 'package:ui_switch_between_page/src/bottom_tab_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomTabBar(),
    );
  }
}

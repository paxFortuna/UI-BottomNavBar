import 'package:flutter/material.dart';
import 'package:ui_switch_between_page/src/bottom_tab_bar.dart';
import 'package:ui_switch_between_page/src/pages/home.dart';
import 'package:ui_switch_between_page/src/pages/profile.dart';
import 'package:ui_switch_between_page/src/pages/search.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: _boxDecoration(),
              child: _button(context, BottomTabBar(), 'BottomTapBar'),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: _boxDecoration(),
              child: _button(
                context,
                ProfilePage(),
                'ChoiceChipSelector',
              ),
            ),
            Container(
              decoration: _boxDecoration(),
              child: _button(
                context,
                SearchPage(),
                ' ImageSlider',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(''),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(''),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(''),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(''),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          spreadRadius: 3,
          color: Colors.grey.shade700,
          blurRadius: 10,
          offset: const Offset(5, 5),
        ),
        const BoxShadow(
          spreadRadius: 3,
          color: Colors.white,
          blurRadius: 12,
          offset: Offset(-5, -5),
        ),
      ],
    );
  }

  _button(BuildContext context, Widget widget, String text) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Text(text),
    );
  }
}

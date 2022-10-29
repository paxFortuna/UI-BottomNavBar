import 'package:flutter/material.dart';
import 'package:ui_switch_between_page/src/bottom_tab_bar.dart';
import 'package:ui_switch_between_page/src/pages/home/home.dart';
import 'package:ui_switch_between_page/src/pages/share/share_image_link.dart';

import 'pages/share/dark_light_theme.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              decoration: _boxDecoration(),
              child: _button(
                context,
                BottomTabBar(),
                'BottomTapBar',
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 200,
              decoration: _boxDecoration(),
              child: _button(
                context,
                DarkLightTheme(),
                'ChoiceChipSelector',
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 200,
              decoration: _boxDecoration(),
              child: _button(
                context,
                HomePage(),
                ' ImageSlider',
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 200,
              decoration: _boxDecoration(),
              child: _button(
                context,
                ShareImageAndLink(),
                'ShareImageAndLink',
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 200,
              decoration: _boxDecoration(),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(''),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 200,
              decoration: _boxDecoration(),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(''),
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

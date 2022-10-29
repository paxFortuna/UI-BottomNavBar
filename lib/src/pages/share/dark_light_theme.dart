import 'package:flutter/material.dart';

import 'share_image_link.dart';

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key? key,
  }) : super(key: key);

  @override
  State<DarkLightTheme> createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShareImageAndLink(),
    );
  }
}

import 'package:flutter/material.dart';

import 'src/bottom_tab_bar.dart';
import 'src/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Routes(),
    );
  }
}

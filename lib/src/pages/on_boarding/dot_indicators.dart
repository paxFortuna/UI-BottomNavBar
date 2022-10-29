import 'package:flutter/material.dart';
class DotIndicators extends StatelessWidget {
  const DotIndicators({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
    );
  }
}
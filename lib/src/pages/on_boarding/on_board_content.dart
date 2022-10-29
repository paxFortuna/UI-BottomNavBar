import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 340),
        SizedBox(height: 50),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style:
          GoogleFonts.openSans(fontSize: 14, color: Colors.grey.shade400),
        )
      ],
    );
  }
}
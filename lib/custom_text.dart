import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

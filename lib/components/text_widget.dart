import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.text,
    this.color,
    this.fontWeight,
    this.letterSpacing,
    this.height,
    required this.fontSize,
    this.textAlign,
    this.lineSpacing,
  });
  final String text;
  final color;
  final double fontSize;
  final fontWeight;
  final letterSpacing;
  final height;
  final textAlign;
  final lineSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.lexend(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {

  static TextStyle subHeadLineStyle(
      {Color color = Colors.grey, double fontSize = 14}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      //letterSpacing: 1.7,
      height: 1.5,
    );
  }

  static TextStyle normalStyle(
      {Color color = Colors.black, double fontSize = 16}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
      //letterSpacing: 1.7,
      height: 1.5,
    );
  }

  static TextStyle profileCardStyle(
      {Color color = Colors.black, double fontSize = 20}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
      //letterSpacing: 1.7,
      height: 1.5,
    );
  }

  static TextStyle headLineStyle({Color color = Colors.white}) {
    return GoogleFonts.notoSerifBengali(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
      height: 1.5
    );
  }
}
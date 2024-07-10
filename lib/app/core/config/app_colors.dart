import 'package:flutter/material.dart';

class AppColors {
  static Color bgColor = const Color(0xffffffff);
  static Gradient appGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff79aa5d),
      Color(0xff518852)
    ],
  );
  static Gradient appGradient2 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.black,
      Colors.black87
    ],
  );
  static Color buttonColor = const Color(0xff518852);
  static Color textColor = const Color(0xffff9197);
  static Color taskColor = const Color(0xff4c8450);
  static Color grideViewBgColor = const Color(0xfff4f7f4);
  static Color textFieldOutlineColor = const Color(0xfff4f3f3);
  static Color hintTextColor = const Color(0xffdbd9d9);
  static Color menuImageColor = Colors.grey.shade100;
}
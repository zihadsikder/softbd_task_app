import 'package:flutter/material.dart';
import 'package:softbd_task/app/core/config/app_colors.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(
    primaryColor: const Color(0xff73a06f),
    primarySwatch: Colors.green,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.hintTextColor),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.grideViewBgColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.grideViewBgColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.grideViewBgColor,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        foregroundColor: AppColors.bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //padding: const EdgeInsets.symmetric(horizontal: 20),
        textStyle: AppTextStyles.headLineStyle(color: AppColors.bgColor),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../config/app_text_style.dart';

class ElevatedButtonWidgets extends StatelessWidget {
  const ElevatedButtonWidgets({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.appGradient,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyles.headLineStyle(color: AppColors.bgColor),
          ),
        ),
      ),
    );
  }
}

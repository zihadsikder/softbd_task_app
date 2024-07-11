import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';

class CircularProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = AppColors.appGradient.createShader(
        Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 50),
      )
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke;

    double startAngle = 0.75 * 2.22;
    double sweepAngle = 0.4 * 2.14;

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 50),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

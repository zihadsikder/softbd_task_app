import 'package:flutter/material.dart';

class DayDate extends StatelessWidget {
  const DayDate({
    super.key,
    required this.day,
    required this.date,
  });

  final String day;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day),
        Text(date),
      ],
    );
  }
}
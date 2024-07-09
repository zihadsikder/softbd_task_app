import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(
              color: Colors.redAccent,
              width: 1.0,
            )),
        child:  Center(child: Text(text),),);
  }
}

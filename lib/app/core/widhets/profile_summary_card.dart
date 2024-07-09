import 'package:flutter/material.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({super.key, required this.text});


  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
            Text(
                text,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active_outlined)),
          ],
        ),
      ],
    );
  }
}

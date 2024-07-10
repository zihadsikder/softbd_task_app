import 'package:flutter/material.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/core/constants/app_assets.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({super.key, required this.text});


  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
            Text(
                text,style: AppTextStyles.profileCardStyle(),
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(AppAssets.notification),),
          ],
        ),
      ],
    );
  }
}

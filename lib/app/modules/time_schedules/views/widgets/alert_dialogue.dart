import 'package:flutter/material.dart';

import '../../../../core/config/app_text_style.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/elevated_button_widgets.dart';

class AlertDialogue extends StatelessWidget {
  const AlertDialogue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        AppAssets.mark,
        width: 96,
        height: 96,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'নতুন অনুচছেদ সংরক্ষণ',
            style: AppTextStyles.headLineStyle(),
          ),
          Center(
              child: Text(
                'আপনার সময়রেখাতে নতুন অনুচছেদ সংরক্ষণ সম্পূর্ণ হয়েছে',
                style: AppTextStyles.subHeadLineStyle(),
              )),
        ],
      ),
      actions: [
        ElevatedButtonWidgets(
          onPressed: () {
            Navigator.pop(context);
          },
          text: 'আরও যোগ করুন',
        )
      ],
    );
  }
}
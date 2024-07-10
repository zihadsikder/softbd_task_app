import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_colors.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/core/widgets/profile_summary_card.dart';
import 'package:softbd_task/app/modules/time/views/screens/test_savings_screen.dart';

import '../controllers/time_controller.dart';

class TimeView extends GetView<TimeController> {
  const TimeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const ProfileSummaryCard(
            text: 'সময়রেখা',
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'আজ, ১২ জুলাই',
                style: AppTextStyles.headLineStyle(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: AppColors.buttonColor),
                    onPressed: () {
                      Get.to(() => TestSavingsScreen());
                    },
                    child: Text(
                      'নতুন যোগ করুন',
                      style: AppTextStyles.normalStyle(color: Colors.white),
                    ),),
              )
            ],
          )
        ],
      ),
    ));
  }
}

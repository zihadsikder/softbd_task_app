import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_colors.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/modules/time/controllers/time_controller.dart';

class DayDate extends StatelessWidget {
  DayDate({
    super.key,
    required this.day,
    required this.date, required this.index,
  });

  final String day;
  final String date;
  final int index;

  final TimeController controller = Get.put(TimeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelected = controller.selectedDay.value == index;
      return GestureDetector(
        onTap: () {
          controller.selectDay(index);
        },
        child: Container(
          width: 40,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            border: Border.all(
              width: isSelected ? 1.5 : 0.5,
              color: isSelected ? AppColors.buttonColor : Colors.transparent,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 14),
              Text(day, style: AppTextStyles.subHeadLineStyle()),
              Text(date, style: AppTextStyles.normalStyle()),
            ],
          ),
        ),
      );
    });
  }
}
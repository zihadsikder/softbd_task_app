import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_text_style.dart';
import '../../controllers/time_controller.dart';

class DayDate extends StatelessWidget {
  DayDate({
    super.key,
    required this.day,
    required this.date,
    required this.index,
    required this.isToday,
  });

  final String day;
  final String date;
  final int index;
  final bool isToday;

  final TimeController controller = Get.put(TimeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelected = controller.selectedDay.value == index;
      return GestureDetector(
        onTap: () {
          if (!isToday) {
            controller.selectDay(index);
          }
        },
        child: Container(
          width: 50,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            border: Border.all(
              width: isToday ? 1.5 : (isSelected ? 1.5 : 0.5),
              color: isToday ? AppColors.buttonColor : (isSelected ? AppColors.buttonColor : Colors.transparent),
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

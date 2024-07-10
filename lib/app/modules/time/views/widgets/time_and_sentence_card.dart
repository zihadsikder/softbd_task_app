import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_text_style.dart';

class TimeAndSentenceCard extends StatelessWidget {
  const TimeAndSentenceCard({
    super.key,
    required this.dayText,
    required this.timeText,
    required this.cardTimeText,
    required this.longText,
    required this.formatText,
    required this.locationText,
  });

  final String dayText;
  final String timeText;
  final String cardTimeText;
  final String longText;
  final String formatText;
  final String locationText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(dayText,style: AppTextStyles.headLineStyle(),),
              Text(timeText,style: AppTextStyles.headLineStyle(),),
            ],
          ),
        ),
        Expanded(
          child: Card(
            //width: double.infinity,
            color: AppColors.buttonColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: AppColors.bgColor,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Text(cardTimeText,style: AppTextStyles.normalStyle(color: AppColors.bgColor,),),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(longText,style: AppTextStyles.headLineStyle(color: AppColors.bgColor,),),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(formatText,style: AppTextStyles.normalStyle(color: AppColors.bgColor,),),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.bgColor,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Text(locationText,style: AppTextStyles.normalStyle(color: AppColors.bgColor,),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task/app/modules/time/views/screens/test_savings_screen.dart';
import 'package:softbd_task/app/modules/time/views/widgets/day_date.dart';
import 'package:softbd_task/app/modules/time/views/widgets/time_and_sentence_card.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/config/app_text_style.dart';
import '../../../core/widgets/profile_summary_card.dart';
import '../controllers/time_controller.dart';

class TimeView extends GetView<TimeController> {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileSummaryCard(text: 'সময়রেখা'),
              const SizedBox(height: 18),
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
                        backgroundColor: AppColors.buttonColor,
                      ),
                      onPressed: () {
                        Get.to(() => const TestSavingsScreen());
                      },
                      child: Text(
                        'নতুন যোগ করুন',
                        style: AppTextStyles.normalStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              buildCard(),
              const SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(
                      color: AppColors.textFieldOutlineColor,
                      width: 4.0,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'আজকের কার্যক্রম',
                        style: AppTextStyles.headLineStyle(),
                      ),
                    ),
                    Obx(() {
                      if (controller.isLoading.value) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (controller.paragraphList.value.data == null ||
                          controller.paragraphList.value.data!.isEmpty) {
                        return const Center(child: Text('কোন ডেটা নেই'));
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              controller.paragraphList.value.data!.length,
                          itemBuilder: (context, index) {
                            final item =
                                controller.paragraphList.value.data![index];
                            return Container(
                              margin: const EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                color: AppColors.textFieldOutlineColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TimeAndSentenceCard(
                                    index: index,
                                    dayText: 'সকাল',
                                    timeText: item.date ?? 'N/A',
                                    cardTimeText: item.date ?? 'N/A',
                                    longText: item.name ?? 'N/A',
                                    formatText: item.category ?? 'N/A',
                                    locationText: item.location ?? 'N/A',
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DayDate(day: 'রবি', date: '২১'),
            DayDate(day: 'সোম', date: '২২'),
            DayDate(day: 'মঙ্গল', date: '২৩'),
            DayDate(day: 'বুধ', date: '২৪'),
            DayDate(day: 'বৃহঃ', date: '২৫'),
            DayDate(day: 'শুক্র', date: '২৬'),
            DayDate(day: 'শনি', date: '২৭'),
          ],
        ),
      ),
    );
  }
}

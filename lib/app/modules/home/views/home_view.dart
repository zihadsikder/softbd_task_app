import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/core/constants/app_assets.dart';
import 'package:softbd_task/app/modules/home/views/widgets/date_container.dart';
import 'package:softbd_task/app/modules/home/views/widgets/menu_card.dart';

import '../../../core/widgets/profile_summary_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileSummaryCard(
                text: 'Flutter Task',
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                          child: Image.asset(
                        AppAssets.profile,
                      )),
                      const SizedBox(
                        width: 14.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'মোঃ মোহাইমেনুল রেজা',
                            style: AppTextStyles.headLineStyle(),
                          ),
                          Text(
                            'সফটবিডি লিমিটেড',
                            style: AppTextStyles.subHeadLineStyle(),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 15,
                              ),
                              Text(
                                'ঢাকা',
                                style: AppTextStyles.subHeadLineStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //color: Colors.black38,
                              border: Border.all(
                                color: Colors.grey.shade200,
                                width: 6.0,
                              )),
                          child: const Center(child: Text('৬ মাস ৬ দিন'))),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'সময় অতিবাহিত',
                        style: AppTextStyles.normalStyle(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'মেয়াদকাল',
                        style: AppTextStyles.normalStyle(),
                      ),
                      const Text('১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০'),
                      Text(
                        'আরও বাকি',
                        style: AppTextStyles.normalStyle(color: Colors.red),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              DateContainer(
                                text: '০',
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              DateContainer(
                                text: '৫',
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              DateContainer(
                                text: '০',
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              DateContainer(
                                text: '৬',
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              DateContainer(
                                text: '১',
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              DateContainer(
                                text: '২',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('বছর'),
                              SizedBox(
                                width: 36.0,
                              ),
                              Text('মাস'),
                              SizedBox(
                                width: 36.0,
                              ),
                              Text('দিন'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = screenWidth > 600 ? 6 : 3;
                  return SizedBox(
                    height: (screenWidth > 600 ? 1 : 4) * 100.0,
                    // Adjust this height as needed
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        final item = controller.menuItems[index];
                        return MenuCard(
                          label: item['label'],
                          subLabel: item['subLabel'],
                          onPressed: item['onPressed'],
                          icon: item['icon'],
                        );
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}

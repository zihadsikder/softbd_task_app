import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/core/constants/app_assets.dart';
import 'package:softbd_task/app/core/constants/circular_Progress_Painter.dart';
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
                text: '',
              ),

              ///employ information view
              profileCard,

              const SizedBox(
                height: 8.0
              ),

              ///time process circular progress
              timeScheduleView,
              const SizedBox(
                height: 16.0
              ),

              /// menu card gridview
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = screenWidth > 600 ? 6 : 3;
                  return SizedBox(
                    height: (screenWidth > 600 ? 1 : 3) * 100.0,
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
                          icon: AssetImage(item['icon']),
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
/// time process method
  Row get timeScheduleView {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 108,
                    height: 108,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 8.0,
                      ),
                    ),
                    child: const Center(child: Text('৬ মাস ৬ দিন')),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomPaint(
                        size: const Size(108, 108),
                        painter: CircularProgressPainter(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'সময় অতিবাহিত',
                style: AppTextStyles.normalStyle(),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          flex: 2,
          child: Column(
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
              LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth > 300;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: isWide ? MainAxisAlignment.start : MainAxisAlignment.spaceEvenly,
                        children: [
                          const DateContainer(text: '০'),
                          const DateContainer(text: '৫'),
                          SizedBox(width: isWide ? 16.0 : 6.0),
                          const DateContainer(text: '০'),
                          const DateContainer(text: '৬'),
                          SizedBox(width: isWide ? 16.0 : 6.0),
                          const DateContainer(text: '১'),
                          const DateContainer(text: '২'),
                        ],
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        mainAxisAlignment: isWide ? MainAxisAlignment.start : MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('বছর'),
                          SizedBox(width: isWide ? 36.0 : 4.0),
                          const Text('মাস'),
                          SizedBox(width: isWide ? 36.0 : 4.0),
                          const Text('দিন'),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

///profile card method
  Card get profileCard {
    return Card(
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
                    Image.asset(
                      AppAssets.map,
                    ),
                    const SizedBox(
                      width: 4.0,
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
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/core/constants/app_assets.dart';
import 'package:softbd_task/app/core/widhets/profile_summary_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ProfileSummaryCard(text: 'Fluuer Task',),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        child: Image.asset(AppAssets.profile,)),
                    SizedBox(width: 14.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('মোঃ মোহাইমেনুল রেজা',style: AppTextStyles.headLineStyle(),),
                        Text('সফটবিডি লিমিটেড',style: AppTextStyles.subHeadLineStyle(),),
                        Row(
                          children: [
                            Icon(Icons.location_on,size: 15,),
                            Text('ঢাকা',style: AppTextStyles.subHeadLineStyle(),),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      )
    );
  }
}

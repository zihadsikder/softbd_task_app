import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_colors.dart';
import 'package:softbd_task/app/core/constants/app_assets.dart';
import '../controllers/main_bottom_nav_controller.dart';

class MainBottomNavView extends GetView<MainBottomNavController> {
  const MainBottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.currentIndex]), // Use Obx to update the screen
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        child: Container(
          width: 70,
            height: 70,
            decoration:  BoxDecoration(
              gradient: AppColors.appGradient,
              shape: BoxShape.circle,
              // border: Border.all(
              //   color: Colors.grey,
              //   width: 4.0
              // )
            ),
            child: Image.asset(AppAssets.camera)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12.0,
        color: Colors.white,
        child: Obx(() => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.home1),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.home4),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.home2),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.home3),
              label: '',
            ),
          ],
          onTap: controller.changeIndex,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          showUnselectedLabels: true,
          showSelectedLabels: true,
        )),
      ),
    );
  }
}

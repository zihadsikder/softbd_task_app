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
      body: Obx(() => controller.screens[controller.currentIndex]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            gradient: AppColors.appGradient,
            shape: BoxShape.circle,
          ),
          child: Image.asset(AppAssets.camera),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12.0,
        color: Colors.white,
        child: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              customBottomNavigationBarItem(
                iconPath: AppAssets.home1,
                activeIconPath: AppAssets.home11,
                isActive: controller.currentIndex == 0,
              ),
              customBottomNavigationBarItem(
                iconPath: AppAssets.home4,
                activeIconPath: AppAssets.home44,
                isActive: controller.currentIndex == 1,
              ),
              customBottomNavigationBarItem(
                iconPath: AppAssets.home2,
                activeIconPath: AppAssets.home22,
                isActive: controller.currentIndex == 2,
              ),
              customBottomNavigationBarItem(
                iconPath: AppAssets.home3,
                activeIconPath: AppAssets.home33,
                isActive: controller.currentIndex == 3,
              ),
            ],
            onTap: controller.changeIndex,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black38,
            showUnselectedLabels: true,
            showSelectedLabels: true,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem({
    required String iconPath,
    required String activeIconPath,
    required bool isActive,
  }) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            isActive ? activeIconPath : iconPath,
          ),
          const SizedBox(height: 4),
          if (isActive)
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                gradient: AppColors.appGradient,
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
        ],
      ),
      label: '',
    );
  }
}

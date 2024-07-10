import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/app_colors.dart';
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
            decoration: const BoxDecoration(
              color: Color(0xff518852),
              shape: BoxShape.circle,
              // border: Border.all(
              //   color: Colors.grey,
              //   width: 4.0
              // )
            ),
            child: Icon(Icons.camera_alt_outlined,color: AppColors.bgColor,)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Obx(() => BottomNavigationBar(
          backgroundColor: Colors.grey,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_open_sharp),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
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

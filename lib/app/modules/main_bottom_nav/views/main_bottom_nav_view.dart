import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_bottom_nav_controller.dart';

class MainBottomNavView extends GetView<MainBottomNavController> {
   MainBottomNavView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: controller.screens[controller.currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          onTap: controller.changeIndex,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: ('Home'),icon: Icon(Icons.home)),
        
        ],),
      )
    );
  }
}

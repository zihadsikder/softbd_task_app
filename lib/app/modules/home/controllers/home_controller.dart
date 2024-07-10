import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd_task/app/core/constants/app_assets.dart';

class HomeController extends GetxController {

  // List of menu items with labels and icons
  final List<Map<String, dynamic>> menuItems = [
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০১',
      'icon': AppAssets.menu1,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০২',
      'icon': AppAssets.menu2,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৩',
      'icon': AppAssets.menu3,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৪',
      'icon': AppAssets.menu4,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৫',
      'icon': AppAssets.menu5,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৬',
      'icon': AppAssets.menu6,
      'onPressed': () {}
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }
}

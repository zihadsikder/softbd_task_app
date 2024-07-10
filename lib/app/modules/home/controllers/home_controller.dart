import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  // List of menu items with labels and icons
  final List<Map<String, dynamic>> menuItems = [
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০১',
      'icon': Icons.person_outline_outlined,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০২',
      'icon': Icons.home_outlined,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৩',
      'icon': Icons.settings_outlined,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৪',
      'icon': Icons.notifications_outlined,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৫',
      'icon': Icons.message_outlined,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৬',
      'icon': Icons.call_outlined,
      'onPressed': () {}
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }
}

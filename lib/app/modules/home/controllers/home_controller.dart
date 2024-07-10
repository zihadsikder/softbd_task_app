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
      'icon': Icons.person_pin,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৪',
      'icon': Icons.camera_enhance,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৫',
      'icon': Icons.edit_document,
      'onPressed': () {}
    },
    {
      'label': 'মেনু নং',
      'subLabel': '০০০০৬',
      'icon': Icons.settings_display_rounded,
      'onPressed': () {}
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }
}

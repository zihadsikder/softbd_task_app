import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:softbd_task/app/core/config/binding.dart';
import 'package:softbd_task/app/core/constants/theme_data.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightThemeData,
      themeMode: ThemeMode.system,
      initialBinding: IntBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart'; // Import for date initialization
import 'package:softbd_task/app/core/config/binding.dart';
import 'package:softbd_task/app/core/constants/theme_data.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize the binding
  await initializeDateFormatting('bn_BD', null); // Initialize Bengali locale

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

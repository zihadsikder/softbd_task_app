import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_bottom_nav/bindings/main_bottom_nav_binding.dart';
import '../modules/main_bottom_nav/views/main_bottom_nav_view.dart';
import '../modules/time/bindings/time_binding.dart';
import '../modules/time/views/time_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_BOTTOM_NAV;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TIME,
      page: () => const TimeView(),
      binding: TimeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_BOTTOM_NAV,
      page: () =>  MainBottomNavView(),
      binding: MainBottomNavBinding(),
    ),
  ];
}

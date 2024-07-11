import 'package:get/get.dart';

import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_bottom_nav/bindings/main_bottom_nav_binding.dart';
import '../modules/main_bottom_nav/views/main_bottom_nav_view.dart';
import '../modules/menu_list/bindings/menu_list_binding.dart';
import '../modules/menu_list/views/menu_list_view.dart';
import '../modules/time_schedules/bindings/time_binding.dart';
import '../modules/time_schedules/views/time_view.dart';

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
      page: () => MainBottomNavView(),
      binding: MainBottomNavBinding(),
    ),
    GetPage(
      name: _Paths.MENU_LIST,
      page: () => const MenuListView(),
      binding: MenuListBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
  ];
}

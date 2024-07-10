import 'package:get/get.dart';
import 'package:softbd_task/app/modules/home/controllers/home_controller.dart';
import 'package:softbd_task/app/modules/main_bottom_nav/controllers/main_bottom_nav_controller.dart';
import 'package:softbd_task/app/modules/time/controllers/time_controller.dart';

class IntBinding extends Bindings {
  @override
  void dependencies () async{
    Get.lazyPut<HomeController> (()=> HomeController());
    Get.lazyPut<TimeController> (()=> TimeController());
    Get.lazyPut<MainBottomNavController> (()=> MainBottomNavController());
  }
}
import 'package:get/get.dart';
import 'package:softbd_task/app/modules/home/views/home_view.dart';
import 'package:softbd_task/app/modules/time/views/time_view.dart';

class MainBottomNavController extends GetxController {
  int selectedIndex = 0;

  int get currentIndex => selectedIndex;

  @override
  void onInit() {
    super.onInit();
  }

  List screens = [
    HomeView(),
    TimeView(),
  ];

  void changeIndex(int index) {
    if (selectedIndex == index) {
      return;
    }

    selectedIndex = index;
    update();
  }

  void backToHome() {
    changeIndex(0);
  }
}

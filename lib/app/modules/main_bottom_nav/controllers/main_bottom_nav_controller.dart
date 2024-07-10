import 'package:get/get.dart';
import 'package:softbd_task/app/modules/account/views/account_view.dart';
import 'package:softbd_task/app/modules/home/views/home_view.dart';
import 'package:softbd_task/app/modules/menu_list/views/menu_list_view.dart';
import 'package:softbd_task/app/modules/time/views/time_view.dart';

class MainBottomNavController extends GetxController {
  var selectedIndex = 0.obs; // Use RxInt for reactivity

  int get currentIndex => selectedIndex.value;

  @override
  void onInit() {
    super.onInit();
  }

  List screens = const [
    HomeView(),
    TimeView(),
    MenuListView(),
    AccountView(),
  ];

  void changeIndex(int index) {
    if (selectedIndex.value == index) {
      return;
    }

    selectedIndex.value = index; // Update the reactive variable
  }

  void backToHome() {
    changeIndex(0);
  }
}

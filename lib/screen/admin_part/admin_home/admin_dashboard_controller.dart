import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class AdminDashboardController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index) {
    debugPrint("Index $index");
    selectedIndex.value = index;
  }
}

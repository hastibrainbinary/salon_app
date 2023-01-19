import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index) {
    debugPrint("Index $index");
    selectedIndex.value = index;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/string.dart';

class MostBookController extends GetxController {
  TextEditingController writeController = TextEditingController();
  RxString isSelect = Strings.about.obs;

  void changeTitle(String str) {
    isSelect.value = str;
  }
}

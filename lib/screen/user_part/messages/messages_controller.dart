import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/string.dart';

class MessagesController extends GetxController{
  TextEditingController searchController = TextEditingController();
  RxString isSelect = Strings.messages.obs;

  void changeTitle(String str) {
    isSelect.value = str;
  }

}
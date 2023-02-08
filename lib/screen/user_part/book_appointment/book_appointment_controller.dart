import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/string.dart';

class BookAppointmentController extends GetxController {
  TextEditingController typeMsgController  =TextEditingController();
  RxString isSelect = Strings.about.obs;
  RxBool chooseServices = true.obs;
  RxBool appointment = false.obs;
  RxBool payment = false.obs;
  RxBool summary = false.obs;
  RxBool isChooseServices = false.obs;
  RxBool isAppointment = false.obs;
  RxBool isPayment = false.obs;
  RxBool isSummary = false.obs;

  RxBool isChooseServicesScreen = true.obs;
  RxBool isAppointmentScreen = false.obs;

  RxBool isServiceNext = false.obs;
  RxBool isAppointmentNext = false.obs;

  Rx<DateTime> month = DateTime.now().obs;

  void changeTitle(String str) {
    isSelect.value = str;
  }

  RxBool availableSlots = false.obs;

  void onAvailableSlots(bool? value) {
    if (value != null) {
      availableSlots.value = value;
    }
  }
}

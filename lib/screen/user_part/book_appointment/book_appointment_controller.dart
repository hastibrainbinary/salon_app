import 'package:get/get.dart';
import 'package:salon_app/utils/string.dart';

class BookAppointmentController extends GetxController {
  RxString isSelect = Strings.about.obs;
  RxBool chooseServices = true.obs;
  RxBool appointment = false.obs;
  RxBool payment = false.obs;
  RxBool summary = false.obs;
  RxBool ischooseServices = false.obs;
  RxBool isappointment = false.obs;
  RxBool ispayment = false.obs;
  RxBool issummary = false.obs;

  RxBool ischooseServicesScreen = true.obs;
  RxBool isappointmentScreen = false.obs;

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

import 'package:get/get.dart';

class AdminAppointmentController extends GetxController {
  Rx<DateTime> month = DateTime.now().obs;
  RxBool availableSlots = false.obs;

  void onAvailableSlots(bool? value) {
    if (value != null) {
      availableSlots.value = value;
    }
  }

}
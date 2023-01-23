import 'package:get/get.dart';

class BookingController extends GetxController {
  RxBool availableSlots = false.obs;

  void onAvailableSlots(bool? value) {
    if (value != null) {
      availableSlots.value = value;

    }
  }
}

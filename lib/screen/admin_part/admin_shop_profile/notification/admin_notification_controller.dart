import 'package:get/get.dart';

class AdminNotificationUserController extends GetxController implements GetxService {
  RxBool isSwitchedSound = true.obs;
  RxBool isSwitchedVibrate = true.obs;
  RxBool isSwitchedGeneralNotification = true.obs;
  RxBool isSwitchedSpecialOffers = true.obs;
  RxBool isSwitchedAppUpdates = true.obs;

  onchangeSound(value) {
    isSwitchedSound.value = value;
    update();
  }

  onchangeVibrate(value) {
    isSwitchedVibrate.value = value;
    update();
  }

  onchangeGeneralNotification(value) {
    isSwitchedGeneralNotification.value = value;
    update();
  }

  onchangeSpecialOffers(value) {
    isSwitchedSpecialOffers.value = value;
    update();
  }

  onchangeAppUpdates(value) {
    isSwitchedAppUpdates.value = value;
    update();
  }
}

import 'package:get/get.dart';
import 'package:salon_app/utils/page_res.dart';

class AdminHomeController extends GetxController {
  RxBool isViewMore = false.obs;

  onTapViewMore() {
    if (isViewMore.value == false) {
      isViewMore.value = true;
    } else {
      isViewMore.value = false;
    }
  }

  onNotificationTap() {
    Get.toNamed(PageRes.notificationScreen);
  }

  onAddYourBankAccountTap() {
    Get.toNamed(PageRes.addYourBankAccountScreen);
  }
}

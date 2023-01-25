import 'package:get/get.dart';

class SelectGenderController extends GetxController {
  RxBool select = false.obs;

  onChangeGirl() {
    select.value = true;
    select.value = false;
    /*Get.toNamed(PageRes.dashBoardScreen);*/
  }

  onChangeMen() {
    select.value = false;
    select.value = true;
    /*Get.toNamed(PageRes.dashBoardScreen);*/
  }
}

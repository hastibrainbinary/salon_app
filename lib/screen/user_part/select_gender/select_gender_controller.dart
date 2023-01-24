import 'package:get/get.dart';
import 'package:salon_app/utils/page_res.dart';

class SelectGenderController extends GetxController{
  RxBool select=false.obs;

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

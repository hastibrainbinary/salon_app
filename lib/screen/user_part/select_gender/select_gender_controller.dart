import 'package:get/get.dart';

class SelectGenderController extends GetxController {
  RxBool selected = false.obs;
  RxBool selected2 = false.obs;

  onChangeGirl() {
    /*selected.value ==  !selected.value;*/

    if (selected.value == false) {
      selected.value = true;
    }
    selected2.value = false;
  }

  onChangeMen() {
    /*selected2.value = !selected2.value;*/

    if (selected2.value == false) {
      selected2.value = true;
    }
    selected.value = false;
    /*Get.toNamed(PageRes.dashBoardScreen);*/
  }
}

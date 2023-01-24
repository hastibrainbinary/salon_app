import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroductionController extends GetxController {
  PageController pageController = PageController();
  RxInt currentPage = 0.obs;
  RxInt selectIndicator = 0.obs;

  void onChangedValues(int values) {
    currentPage.value = values;
    update(["pageView"]);
  }

  init() {
    Future.delayed(const Duration(seconds: 3), () {
      currentPage.value = currentPage.value++;

      update(["pageView"]);
    });
    /* void onSkipTap(){
    Get.toNamed(
        PageRes.dashBoardScreen
    );
  }
*/
  }
}

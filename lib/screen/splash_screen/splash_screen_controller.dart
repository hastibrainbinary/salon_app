import 'package:get/get.dart';
import 'package:salon_app/utils/page_res.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    init();
    super.onInit();
  }

  init() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(PageRes.introductionScreen);
    });
  }
}

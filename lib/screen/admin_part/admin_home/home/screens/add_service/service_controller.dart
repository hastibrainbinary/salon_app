import 'package:get/get.dart';

class ServiceController extends GetxController {
  RxBool isMore = false.obs;

  onMoreTap({required bool val}) {
    isMore.value = val;
  }
}

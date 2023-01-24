import 'package:get/get.dart';
import 'package:salon_app/utils/string.dart';

class BookAppointmentController extends GetxController {
  RxString isSelect = Strings.about.obs;
  RxBool chooseServices= false.obs;
  RxBool appointment= false.obs;
  RxBool payment= false.obs;
  RxBool summary= false.obs;

  void changeTitle(String str) {
    isSelect.value = str;
  }
}

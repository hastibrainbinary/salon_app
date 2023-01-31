import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  RxString phoneError = "".obs;
  phoneValidation() {
    if (phoneController.text.trim() == "") {
      phoneError.value = 'Please enter phoneNumber';
    } else {
      if (phoneController.text.length == 10) {
        phoneError.value = "";
      } else {
        phoneError.value = "Invalid phone number";
      }
    }
    update(["showPhoneNumber"]);
  }

  bool validator() {
    phoneValidation();

    if (phoneError.value == "") {
      return true;
    } else {
      return false;
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AdminNewPassWordController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RxString newPasswordError = ''.obs;
  RxString confirmPasswordError = ''.obs;
  RxBool show = true.obs;
  RxBool confirm = true.obs;

  passwordValidation() {
    if (passwordController.text.trim() == "") {
      newPasswordError.value = "Enter Password";
    } else {
      if (passwordController.text.trim().length >= 8) {
        newPasswordError.value = '';
      } else {
        newPasswordError.value =
            'Password must be at least 8 characters in length';
      }
    }
  }

  newPasswordValidation() {
    if (confirmPasswordController.text.trim() == "") {
      confirmPasswordError.value = "Enter Password";
    } else {
      if (passwordController.text.trim() ==
          confirmPasswordController.text.trim()) {
        confirmPasswordError.value = '';
      } else {
        confirmPasswordError.value =
            'Confirmation password does not match the entered password';
      }
    }
  }

  bool validator() {
    passwordValidation();
    newPasswordValidation();

    if (newPasswordError.value == "" && confirmPasswordError.value == "") {
      return true;
    } else {
      return false;
    }
  }

  chang() {
    debugPrint("SHOW $show");
    show.value = !show.value;
  }

  reChange() {
    debugPrint("Confirm $confirm");
    confirm.value = !confirm.value;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxString emailError = "".obs;
  RxString passwordError = ''.obs;
  RxBool show = true.obs;
  RxBool confirm = true.obs;
  emailValidation() {
    if (emailController.text.trim() == "") {
      emailError.value = 'please Enter Email'.tr;
    } else {
      if (RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController.text)) {
        emailError.value = '';
      } else {
        emailError.value = 'invalidEmail'.tr;
      }
    }
  }

  passwordValidation() {
    if (passwordController.text.trim() == "") {
      passwordError.value = "Enter Password";
    } else {
      if (passwordController.text.trim().length >= 8) {
        passwordError.value = '';
      } else {
        passwordError.value =
            'Password must be at least 8 characters in length';
      }
    }
  }

  bool validator() {
    emailValidation();

    passwordValidation();

    if (emailError.value == "" && passwordError.value == "") {
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

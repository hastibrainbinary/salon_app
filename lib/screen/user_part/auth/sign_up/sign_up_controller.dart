import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController phoneController = TextEditingController(text: "+91 ");
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RxString userError = "".obs;
  RxString emailError = "".obs;
  RxString phoneError = "".obs;
  RxString newPasswordError = ''.obs;
  RxString confirmPasswordError = ''.obs;
  RxBool show = true.obs;
  RxBool confirm = true.obs;

  userNameValidation() {
    if (userNameController.text.trim() == "") {
      userError.value = "please Enter UserName".tr;
    } else {
      userError.value = "";
    }
  }

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

  phoneValidation() {
    if (phoneController.text.trim() == "") {
      phoneError.value = 'Please enter phoneNumber';
    } else {
      if (phoneController.text.length == 13) {
        phoneError.value = "";
      } else {
        phoneError.value = "Invalid phone number";
      }
    }
    update(["showPhoneNumber"]);
  }

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
    userNameValidation();
    emailValidation();

    phoneValidation();

    passwordValidation();
    newPasswordValidation();

    if (userError.value == "" &&
        emailError.value == "" &&
        phoneError.value == "" &&
        newPasswordError.value == "" &&
        confirmPasswordError.value == "") {
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

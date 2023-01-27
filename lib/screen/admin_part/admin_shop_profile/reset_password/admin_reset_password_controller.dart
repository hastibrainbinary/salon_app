import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminResetPasswordController extends GetxController {

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  RxBool show = true.obs;
  RxBool confirm = true.obs;
  chang() {
    debugPrint("SHOW $show");
    show.value = !show.value;
  }

  reChange() {
    debugPrint("Confirm $confirm");
    confirm.value = !confirm.value;
  }

}

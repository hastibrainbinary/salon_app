import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddYourBankAccountController extends GetxController {
  Rx<TextEditingController> accountHolderNameController =
      TextEditingController().obs;

  Rx<TextEditingController> accountNumberController =
      TextEditingController().obs;
  Rx<TextEditingController> reEnterAccountNumberController =
      TextEditingController().obs;

  RxBool isSwitch = true.obs;

  onSwitchChange(bool val) {
    isSwitch.value = val;
    // if (isSwitch.value == true) {
    //   isSwitch.value = false;
    // } else {
    //   isSwitch.value = true;
    // }
  }
}

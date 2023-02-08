import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddYourBankAccountController extends GetxController {
  Rx<TextEditingController> accountHolderNameController =
      TextEditingController().obs;

  Rx<TextEditingController> accountNumberController =
      TextEditingController().obs;
  Rx<TextEditingController> reEnterAccountNumberController =
      TextEditingController().obs;


  RxBool isAccount = true.obs;
  onchangeAccount(value) {
    isAccount.value = value;
    update();
  }
}

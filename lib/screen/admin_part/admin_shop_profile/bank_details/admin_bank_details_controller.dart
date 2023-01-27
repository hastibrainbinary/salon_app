import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminBankDetailsController extends GetxController {

  TextEditingController accountHolderController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController reAccountNumberController = TextEditingController();
  RxBool isAccount = true.obs;
  onchangeAccount(value) {
    isAccount.value = value;
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/utils/string.dart';

class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  RxString dropDownValue = Strings.male.obs;
  changeDropDown({required String val}) {
    dropDownValue.value = val;
    // dropDownValue.value = genderController.text;
  }

  RxList items = [Strings.male, Strings.female].obs;
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salon_app/utils/string.dart';

class AdminEditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController openingHoursController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  RxString dropDownValue = Strings.male.obs;
  ImagePicker picker = ImagePicker();
  Rx<File>? image;
  RxBool isImg = false.obs;
  RxString imgPath = "".obs;
  RxList<dynamic> posts = [].obs;
  changeDropDown({required String val}) {
    dropDownValue.value = val;
    // dropDownValue.value = genderController.text;
  }

  RxString gender = "Male".obs;
  RxBool isGender = false.obs;

  onTapGender() {
    if (isGender.value == true) {
      isGender.value = false;
    } else {
      isGender.value = true;
    }
  }

  RxList items = [Strings.male, Strings.female].obs;

  onTapCamera() async {
    XFile? img = await picker.pickImage(source: ImageSource.camera);
    String path = img!.path;
    imgPath.value = img.path;
    image?.value = File(path);
    posts.add(path);

    Get.back();
  }

  onTapGallery() async {
    XFile? gallery = await picker.pickImage(source: ImageSource.gallery);
    String path = gallery!.path;
    imgPath.value = gallery.path;
    posts.add(path);

    image?.value = File(path);

    Get.back();
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController salonNameController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController specialistController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  ImagePicker picker = ImagePicker();
  Rx<File>? image;
  RxBool isImg = false.obs;
  RxString imgPath = "".obs;
  RxList<dynamic> posts = [].obs;
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

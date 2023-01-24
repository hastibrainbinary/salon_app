import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileController extends GetxController{
  ImagePicker picker = ImagePicker();
  File? image;


  onTapCamera() async {
    XFile? img = await picker.pickImage(source: ImageSource.camera);
    String path = img!.path;
    image = File(path);

    Get.back();
  }

  onTapGallery() async {
    XFile? gallery = await picker.pickImage(source: ImageSource.gallery);
    String path = gallery!.path;
    image = File(path);


    Get.back();
  }



}
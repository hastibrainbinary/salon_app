import 'package:get/get.dart';

class AdminMessageDetailController extends GetxController {
  List admins = [];
  List messages = [
    {"type": "admin", "msg": "Lorem ipsum"},
    {
      "type": "admin",
      "msg":
          "Lorem Ipsum è un test segnapostoutilizzato nel store della tipping della stamp."
    },
    {
      "type": "user",
      "msg":
          "Lorem Ipsum è un test segnapostoutilizzato nel store della tipping della stamp."
    },
    {"type": "user", "msg": "Lorem ipsum"},
  ];
}

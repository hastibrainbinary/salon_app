import 'package:get/get.dart';

class AdminMessageDetailController extends GetxController {
  List admins = [];
  List messages = [
    {"type": "admin", "msg": "Lorem ipsum"},
    {
      "type": "admin",
      "msg":
          "Lorem Ipsum è un testo segnapostoutilizzato nel settore della tipografia della stampa."
    },
    {
      "type": "user",
      "msg":
          "Lorem Ipsum è un testo segnapostoutilizzato nel settore della tipografia della stampa."
    },
    {"type": "user", "msg": "Lorem ipsum"},
  ];
}

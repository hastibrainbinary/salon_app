import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_chat/messages_controller.dart';
import 'package:salon_app/screen/user_part/messages/widget.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class AdminMessagesScreen extends StatelessWidget {
  AdminMessagesScreen({Key? key}) : super(key: key);
  final AdminMessagesController messagesController =
      Get.put(AdminMessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: const Alignment(0, 1.3),
            children: [
              Container(
                // height: 160,
                width: Get.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
              ),
              const Image(
                image: AssetImage(AssetRes.mostBookBack),
              ),
              Positioned(
                // top: 65,
                // left: 69,
                // right: 68,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(
                      () => (messagesController.isSelect.value ==
                              Strings.messages)
                          ? Text(
                              Strings.messages,
                              style: appTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.white),
                            )
                          : Text(
                              Strings.callList,
                              style: appTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: ColorRes.white),
                            ),
                    ),
                    SizedBox(height: Get.height * 0.0246),
                    Container(
                      height: 40,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 190,
                            child: TextFormField(
                              controller: messagesController.searchController,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: 'search ...',
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: appTextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: ColorRes.indicator,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: ColorRes.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: ColorRes.black.withOpacity(0.2),
                                  blurRadius: 6.0,
                                  spreadRadius: 1.0,
                                  /*offset: Offset(0.0, 0.0),*/
                                )
                              ],
                            ),
                            child: const Center(
                              child: Icon(Icons.search_outlined,
                                  color: ColorRes.indicator),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.0307),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    messagesController.changeTitle(Strings.messages);
                  },
                  child: Container(
                    height: 25,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: messagesController.isSelect.value ==
                                    Strings.messages
                                ? ColorRes.indicator
                                : Colors.transparent,
                            width: 2),
                      ),
                    ),
                    child: const Text(
                      Strings.messages,
                      style: TextStyle(
                        color: ColorRes.indicator,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: Get.width * 0.3253),
                InkWell(
                  onTap: () {
                    messagesController.changeTitle(Strings.call);
                  },
                  child: Container(
                    height: 25,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: messagesController.isSelect.value ==
                                    Strings.call
                                ? ColorRes.indicator
                                : Colors.transparent,
                            width: 2),
                      ),
                    ),
                    child: const Text(
                      Strings.call,
                      style: TextStyle(
                        color: ColorRes.indicator,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.0123),
          Obx(() => messagesController.isSelect.value == Strings.messages
              ? Expanded(
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Get.toNamed(PageRes.messageDetailScreen);
                            },
                            child: messages());
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 30);
                      },
                      itemCount: 9),
                )
              : Expanded(
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return call();
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 30);
                      },
                      itemCount: 9),
                )),
        ],
      ),
    );
  }
}

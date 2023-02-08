import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/messages/message_detail/message_detail_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';

class MessageDetailScreen extends StatelessWidget {
  MessageDetailScreen({super.key});

  final MessageDetailController messageDetailController =
      Get.put(MessageDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: Get.width * 0.055, right: Get.width * 0.055),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: ColorRes.indicator,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      AssetRes.detailsScreen,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Serenity Salon",
                      style: appTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorRes.black,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            color: ColorRes.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.008,
                        ),
                        Text(
                          "online",
                          style: appTextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                    onTap: () => Get.toNamed(PageRes.callRingScreen),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(AssetRes.phoneIcon),
                    )),
              ],
            ),
            SizedBox(
              height: Get.height * 0.035,
            ),
            Text(
              "Today",
              style: appTextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorRes.black.withOpacity(0.5)),
            ),
            SizedBox(
              height: Get.height * 0.035,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                physics: const BouncingScrollPhysics(),
                itemCount: messageDetailController.messages.length,
                itemBuilder: (context, index) {
                  if ((messageDetailController.messages[index]['type'] ==
                      "admin")) {
                    messageDetailController.admins
                        .add(messageDetailController.messages[index]['msg']);
                  }
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: (messageDetailController.messages[index]
                                ['type'] ==
                            "user")
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      ((messageDetailController.messages[index]['type'] ==
                              "admin"))
                          ? (index == 1)
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, bottom: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(99),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: Image.asset(
                                        AssetRes.detailsScreen,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              : const Padding(
                                  padding:
                                      EdgeInsets.only(right: 15, bottom: 10),
                                  child: SizedBox(
                                    height: 25,
                                    width: 25,
                                  ),
                                )
                          : const SizedBox(),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        constraints: BoxConstraints(
                          maxWidth: Get.width / 1.6,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: (messageDetailController
                                        .messages[index]['type'] ==
                                    "user")
                                ? BorderRadius.only(
                                    topRight: (index % 2 == 1)
                                        ? const Radius.circular(0)
                                        : const Radius.circular(10),
                                    topLeft: const Radius.circular(10),
                                    bottomLeft: const Radius.circular(10),
                                    bottomRight: (index % 2 == 0)
                                        ? const Radius.circular(0)
                                        : const Radius.circular(10))
                                : BorderRadius.only(
                                    topLeft: (index % 2 == 1)
                                        ? const Radius.circular(0)
                                        : const Radius.circular(10),
                                    topRight: const Radius.circular(10),
                                    bottomRight: const Radius.circular(10),
                                    bottomLeft: (index % 2 == 0)
                                        ? const Radius.circular(0)
                                        : const Radius.circular(10)),
                            color: (messageDetailController.messages[index]
                                        ['type'] ==
                                    "user")
                                ? ColorRes.indicator.withOpacity(0.85)
                                : ColorRes.gray.withOpacity(0.5)),
                        child: Text(
                          "${messageDetailController.messages[index]['msg']}",
                          style: appTextStyle(
                              color: (messageDetailController.messages[index]
                                          ['type'] ==
                                      "user")
                                  ? ColorRes.white
                                  : ColorRes.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(AssetRes.pinIcon),
                  ),
                ),
                Container(
                  height: 40,
                  width: 245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorRes.indicator),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        isCollapsed: true,
                        border: InputBorder.none,
                        hintText: 'Type something......',
                        fillColor: Colors.transparent,
                        filled: true,
                        hintStyle: appTextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: ColorRes.black.withOpacity(0.5),
                        ),
                        contentPadding: EdgeInsets.only(
                            left: Get.width * 0.05, top: Get.height * 0.01)),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(AssetRes.sendIcon),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

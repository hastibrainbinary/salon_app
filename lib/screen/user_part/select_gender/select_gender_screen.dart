import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/screen/user_part/select_gender/select_gender_controller.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

class SelectGenderScreen extends StatelessWidget {
  SelectGenderScreen({Key? key}) : super(key: key);
  final SelectGenderController selectGenderController =
      Get.put(SelectGenderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.1810),
          const Center(
            child: Image(
              image: AssetImage(AssetRes.logo1),
              width: 69,
              height: 38,
            ),
          ),
          SizedBox(height: Get.height * 0.1046),
          Text(
            Strings.selectGender,
            style: appTextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: ColorRes.indicator),
          ),
          SizedBox(height: Get.height * 0.0431),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() =>InkWell(
                onTap: () => selectGenderController.onChangeGirl(),
                child: Container(
                  width: 152,
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: selectGenderController.selected.value == true
                            ? ColorRes.indicator
                            : ColorRes.white,
                        width: 1.5),
                    borderRadius: BorderRadius.circular(12),
                    color: ColorRes.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff94674F).withOpacity(0.13),
                        offset: const Offset(0.0, 0),
                        blurRadius: 51.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 104,
                            width: 104,
                            decoration: BoxDecoration(
                                color: ColorRes.gray,
                                borderRadius: BorderRadius.circular(104)),
                          ),
                          const Positioned(
                            bottom: 0,
                            left: 7,
                            child: Image(
                              image: AssetImage(AssetRes.girl),
                              fit: BoxFit.cover,
                              height: 90,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(width: Get.width * 0.0533),
             Obx(() =>  InkWell(
               onTap: () => selectGenderController.onChangeMen(),
               child: Container(
                 width: 152,
                 height: 180,
                 decoration: BoxDecoration(
                   border: Border.all(
                       color: selectGenderController.selected2.value == true
                           ? ColorRes.indicator
                           : ColorRes.white,
                       width: 1.5),
                   borderRadius: BorderRadius.circular(12),
                   color: ColorRes.white,
                   boxShadow: [
                     BoxShadow(
                       color: const Color(0xff94674F).withOpacity(0.13),
                       offset: const Offset(0.0, 0),
                       blurRadius: 51.0,
                     ),
                   ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Stack(
                       children: [
                         Container(
                           height: 104,
                           width: 104,
                           decoration: BoxDecoration(
                               color: ColorRes.gray,
                               borderRadius: BorderRadius.circular(104)),
                         ),
                         const Positioned(
                           bottom: 0,
                           left: 7,
                           child: Image(
                             image: AssetImage(AssetRes.men),
                             fit: BoxFit.cover,
                             height: 90,
                           ),
                         )
                       ],
                     )
                   ],
                 ),
               ),
             ),)
            ],
          ),
          SizedBox(height: Get.height * 0.1169),
          commonButton(
              onTap: () => Get.toNamed(PageRes.dashBoardScreen),
              title: Strings.Continue,
              textColor: ColorRes.white,
              backgroundColor: ColorRes.indicator)
        ],
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/common/common_btn.dart';
import 'package:salon_app/utils/app_style.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/utils/string.dart';

Future alert(context, {String? flow}) {
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetRes.location),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                textAlign: TextAlign.center,
                Strings.enableLocation,
                style: appTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: ColorRes.indicator),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 450,
                child: Text(
                  textAlign: TextAlign.center,
                  Strings
                      .weNeedToKnowYourLocationInOrderToSuggestNearByServices,
                  style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              commonButton(
                  onTap: () => Get.toNamed(PageRes.getStartedScreen),
                  title: Strings.allowLocation,
                  textColor: ColorRes.white,
                  backgroundColor: ColorRes.indicator)
            ],
          ),
        ),
      );
    },
  );
}

Future success(context, {String? flow}) {
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetRes.success),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                textAlign: TextAlign.center,
                Strings.successfullyCreate,
                style: appTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: ColorRes.indicator),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 450,
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.successfullyCreateYourAccount,
                  style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              commonButton(
                  onTap: () => Get.toNamed(PageRes.profileScreen),
                  title: Strings.ok,
                  textColor: ColorRes.white,
                  backgroundColor: ColorRes.indicator)
            ],
          ),
        ),
      );
    },
  );
}

Future password(context, {String? flow}) {
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetRes.forgotPassword),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                textAlign: TextAlign.center,
                Strings.incorrectPassword,
                style: appTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: ColorRes.indicator),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 450,
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.pleaseEnter,
                  style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              commonButton(
                  onTap: () => (flow == "admin")
                      ? Get.toNamed(PageRes.adminForgotPassword)
                      : Get.toNamed(PageRes.forgotPassword),
                  title: Strings.forgotPassword,
                  textColor: ColorRes.white,
                  backgroundColor: ColorRes.indicator),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.tryAgain,
                  style: TextStyle(
                      color: ColorRes.indicator,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

Future reset(context, {String? flow}) {
  return showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetRes.success),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                textAlign: TextAlign.center,
                Strings.passwordReset,
                style: appTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: ColorRes.indicator),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 450,
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.yourPasswordReset,
                  style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              commonButton(
                  title: Strings.done,
                  textColor: ColorRes.white,
                  backgroundColor: ColorRes.indicator)
            ],
          ),
        ),
      );
    },
  );
}

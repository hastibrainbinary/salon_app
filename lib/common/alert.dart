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
                  onTap: () => (flow == "admin")
                      ? Get.offAndToNamed(PageRes.adminProfileScreen)
                      : Get.toNamed(PageRes.profileScreen),
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

Future resetPassword(context, {String? flow}) {
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
                Strings.resetPassword,
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
                  Strings.yourPassword,
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

Future logout(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  Strings.logout,
                  style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: ColorRes.indicator),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 332,
                  child: Text(
                    textAlign: TextAlign.center,
                    Strings.areYouSure,
                    style: appTextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: ColorRes.black.withOpacity(0.5),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 45,
                  width: 145,
                  decoration: BoxDecoration(
                    color: ColorRes.indicator,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      Strings.yesLogout,
                      style: appTextStyle(
                          color: ColorRes.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    Strings.cancel,
                    style: appTextStyle(
                        color: ColorRes.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

Future bookingConfirmed(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Image(
                  image: AssetImage(AssetRes.confirmPayment),
                ),
                const SizedBox(height: 25),
                InkWell(onTap:
                  () {
                    Get.toNamed(PageRes.appointmentBookingScreen);
                  },
                  child: Text(
                    Strings.bookingConfirmed,
                    style: appTextStyle(
                        color: ColorRes.indicator,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center,
                  Strings.aConfirmationMessage,
                  style: appTextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorRes.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

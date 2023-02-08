import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:salon_app/utils/color_res.dart';
import 'package:salon_app/utils/page_res.dart';

class AdminPhoneOtpController extends GetxController {
  TextEditingController otpController = TextEditingController();
  RxInt seconds = 40.obs;
  Timer? _countDown;
  Future startTimer() async {
    update(["Seconds"]);
    const oneSec = Duration(seconds: 1);
    _countDown = Timer.periodic(
      oneSec,
      (timer) {
        if (seconds.value == 0) {
          _countDown?.cancel();
          update(["Seconds"]);
        } else {
          seconds.value = seconds.value - 1;
          update(["Seconds"]);
        }
      },
    );
    update(["Seconds"]);
  }

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  String otpError = "";
  otpValidation() {
    if (otpController.text.isEmpty) {
      otpError = "Enter otp";
    } else {
      if (otpController.text.length != 4) {
        otpError = 'Invalid OTP code';
      } /*else {
        otpError = "Enter  valid otp";
      }*/
    }
  }

  validator() {
    otpValidation();

    if (otpError == "") {
      Future.delayed(const Duration(seconds: 1), () {
        Get.offAndToNamed(PageRes.adminSignUpScreen);
      });
      return true;
    } else {
      return false;
    }
  }

  final defaultTheme = PinTheme(
    width: 50,
    height: 50,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    textStyle: const TextStyle(
        fontSize: 20, color: ColorRes.white, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: ColorRes.indicator,
      border: Border.all(color: ColorRes.indicator),
      borderRadius: BorderRadius.circular(5),
    ),
  );

  /* final defaultTextTheme = PinTheme(
    width: 50,
    height: 50,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    textStyle:  TextStyle(
        fontSize: 20, color: ColorRes.white, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: ColorRes.indicator,
      border: Border.all(color: ColorRes.indicator),
      borderRadius: BorderRadius.circular(5),
    ),
  );*/
}

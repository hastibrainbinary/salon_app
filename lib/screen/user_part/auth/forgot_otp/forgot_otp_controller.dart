import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:salon_app/utils/color_res.dart';

class ForgotOtpController extends GetxController {
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
          seconds.value = seconds.value-1;
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
    if (otpController.text.trim() == "") {
      otpError = "Enter otp";
    } else {
      if (otpController.text.trim().length >= 8) {
        otpError = 'Invalid OTP code';
      } else {
        otpError = "Enter  valid otp";
      }
    }
  }

  bool validator() {
    otpValidation();

    if (otpError == "") {
      return true;
    } else {
      return false;
    }
  }

  final defaultTheme = PinTheme(

    width: 50,
    height: 50,
    margin: const EdgeInsets.symmetric(
        horizontal: 10
    ),
    textStyle: const TextStyle(
        fontSize: 20, color: ColorRes.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: ColorRes.indicator,
      border: Border.all(color: ColorRes.indicator),
      borderRadius: BorderRadius.circular(5),

    ),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_home/admin_dashboard_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_forgot_otp/admin_forgot_otp_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_forgot_password/admin_forgot_password_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_log_in/admin_log_in_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_new_password/admin_new_password_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_phone_otp/admin_phone_otp_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_sign_up/admin_sign_up_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_sign_up_mobile/admin_sign_up_phone.dart';
import 'package:salon_app/screen/get_started/get_started_screen.dart';
import 'package:salon_app/screen/introduction_screen/introduction_screen.dart';
import 'package:salon_app/screen/select_type/select_type_screen.dart';
import 'package:salon_app/screen/splash_screen/splash_screen.dart';
import 'package:salon_app/screen/user_part/auth/forgot_otp/forgot_otp_screen.dart';
import 'package:salon_app/screen/user_part/auth/forgot_password/forgot_password_screen.dart';
import 'package:salon_app/screen/user_part/auth/log_in/log_in_screen.dart';
import 'package:salon_app/screen/user_part/auth/new_password/new_password_screen.dart';
import 'package:salon_app/screen/user_part/auth/phone_otp/phone_otp_screen.dart';
import 'package:salon_app/screen/user_part/auth/sign_up/sign_up_screen.dart';
import 'package:salon_app/screen/user_part/auth/sign_up_mobile/sign_up_phone.dart';
import 'package:salon_app/screen/user_part/bookings/booking_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/dashboard_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/home/home_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_screen.dart';
import 'package:salon_app/sign_up&login_intro/sign_up_login_screen.dart';
import 'package:salon_app/utils/page_res.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "salon_app",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        initialRoute: "/",
        getPages: [
          GetPage(
              name: PageRes.introductionScreen,
              page: () => IntroductionScreen()),
          GetPage(
              name: PageRes.getStartedScreen,
              page: () => const GetStartedScreen()),
          GetPage(
              name: PageRes.selectTypeScreen,
              page: () => const SelectTypeScreen()),
          GetPage(
              name: PageRes.signUpSignInScreen,
              page: () => const SignUpLogIngScreen()),
          GetPage(
              name: PageRes.signUpMobileScreen,
              page: () => SignUpMobileNumberScreen()),
          GetPage(name: PageRes.phoneOtpScreen, page: () => PhoneOtpScreen()),
          GetPage(name: PageRes.signUpScreen, page: () => SignUpScreen()),
          GetPage(name: PageRes.logInScreen, page: () => LogInScreen()),
          GetPage(
              name: PageRes.forgotPassword, page: () => ForgotPasswordScreen()),
          GetPage(name: PageRes.forgotOtpScreen, page: () => ForgotOtpScreen()),
          GetPage(
              name: PageRes.newPasswordScreen, page: () => NewPasswordScreen()),
          GetPage(name: PageRes.dashBoardScreen, page: () => DashBoardScreen()),
          GetPage(name: PageRes.homeScreen, page: () => HomeScreen()),
          GetPage(name: PageRes.mostBook, page: () => const MostBookScreen()),
          GetPage(name: PageRes.bookings, page: () => BookingScreen()),

          ///_____________________________________ admin ____________________________________
          GetPage(
              name: PageRes.adminSignUpScreen, page: () => AdminSignUpScreen()),
          GetPage(
              name: PageRes.adminSignUpMobileScreen,
              page: () => AdminSignUpMobileNumberScreen()),

          GetPage(
              name: PageRes.adminForgotOtpScreen,
              page: () => AdminForgotOtpScreen()),

          GetPage(
              name: PageRes.adminForgotPassword,
              page: () => AdminForgotPasswordScreen()),

          GetPage(
              name: PageRes.adminLogInScreen, page: () => AdminLogInScreen()),

          GetPage(
              name: PageRes.adminNewPasswordScreen,
              page: () => AdminNewPasswordScreen()),
          GetPage(
              name: PageRes.adminPhoneOtpScreen,
              page: () => AdminPhoneOtpScreen()),

          GetPage(
              name: PageRes.adminDashBoardScreen,
              page: () => AdminDashboardScreen()),
        ]);
  }
}

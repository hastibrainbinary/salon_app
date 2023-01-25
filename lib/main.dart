import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_chat/message_detail/message_detail_screen.dart';
import 'package:salon_app/screen/admin_part/admin_chat/messages_screen.dart';
import 'package:salon_app/screen/admin_part/admin_home/admin_dashboard_screen.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_service/service_screen.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_your_bank_account/add_your_bank_account_screen.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/add_your_bank_account/edit_account/edit_account.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/screens/notifocation/notification_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_forgot_otp/admin_forgot_otp_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_forgot_password/admin_forgot_password_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_log_in/admin_log_in_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_new_password/admin_new_password_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_phone_otp/admin_phone_otp_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_sign_up/admin_sign_up_screen.dart';
import 'package:salon_app/screen/admin_part/auth/admin_sign_up_mobile/admin_sign_up_phone.dart';
import 'package:salon_app/screen/admin_part/profile/profile_screen.dart';
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
import 'package:salon_app/screen/user_part/book_appointment/book_appointment_screen.dart';
import 'package:salon_app/screen/user_part/bookings/booking_user_details/booking_user_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/dashboard_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/home/filtter_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/home/home_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_details_screen.dart';
import 'package:salon_app/screen/user_part/dashboard/most_book/most_book_screen.dart';
import 'package:salon_app/screen/user_part/messages/message_detail/message_detail_screen.dart';
import 'package:salon_app/screen/user_part/my_appointment/appointment_booking/appointment_booking_screen.dart';
import 'package:salon_app/screen/user_part/nearby_salons/nearby_salons_screen.dart';
import 'package:salon_app/screen/user_part/profile/profile_screen.dart';
import 'package:salon_app/screen/user_part/profile_user/filter/filter_screen_user.dart';
import 'package:salon_app/screen/user_part/profile_user/invite_friend/invite_friend_screen.dart';
import 'package:salon_app/screen/user_part/profile_user/notificationU/notification_user_Screen.dart';
import 'package:salon_app/screen/user_part/profile_user/privacy_policy/privacy_policy_screen.dart';
import 'package:salon_app/screen/user_part/profile_user/reset_password_user/reset_password_user_screen.dart';
import 'package:salon_app/screen/user_part/select_gender/select_gender_screen.dart';
import 'package:salon_app/sign_up&login_intro/sign_up_login_screen.dart';
import 'package:salon_app/utils/page_res.dart';
import 'package:salon_app/screen/user_part/bookings/booking_screen.dart';

import 'screen/user_part/messages/messages_screen.dart';

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

          GetPage(name: PageRes.mostBook, page: () => MostBookScreen()),
          GetPage(name: PageRes.bookings, page: () => BookingScreen()),
          GetPage(name: PageRes.profileScreen, page: () => ProfileScreen()),
          GetPage(name: PageRes.selectGender, page: () => SelectGenderScreen()),
          GetPage(
              name: PageRes.nearBySalonScreen, page: () => NearBySalonScreen()),

          GetPage(
              name: PageRes.appointmentBookingScreen,
              page: () => AppointmentBookingScreen()),

          GetPage(name: PageRes.messagesScreen, page: () => MessagesScreen()),
          GetPage(name: PageRes.notificationUserScreen, page: () => NotificationUserScreen()),
          GetPage(name: PageRes.filterScreenUser, page: () => FilterScreenUser()),
          GetPage(name: PageRes.resetPasswordsScreen, page: () => ResetPasswordsScreen()),
          GetPage(name: PageRes.inviteFriendScreen, page: () => InviteFriendScreen()),
          GetPage(name: PageRes.privacyPolicyScreen, page:()=> PrivacyPolicyScreen()),




          GetPage(
              name: PageRes.messageDetailScreen,
              page: () => MessageDetailScreen()),

          ///_____________________________________ ADMIN PART -M ____________________________________
          GetPage(
              name: PageRes.adminSignUpScreen, page: () => AdminSignUpScreen()),
          GetPage(
              name: PageRes.adminMessagesScreen,
              page: () => AdminMessagesScreen()),
          GetPage(
              name: PageRes.adminMessageDetailScreen,
              page: () => AdminMessageDetailScreen()),
          GetPage(name: PageRes.addSeviceScreen, page: () => ServiceScreen()),
          GetPage(
              name: PageRes.notificationScreen,
              page: () => NotificationScreen()),

          GetPage(
              name: PageRes.adminProfileScreen,
              page: () => AdminProfileScreen()),

          GetPage(
              name: PageRes.addYourBankAccountScreen,
              page: () => AddYourBankAccountScreen()),

          GetPage(
              name: PageRes.editBankAccountScreen,
              page: () => EditBankAccountScreen()),
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

          GetPage(name: PageRes.mostBook, page: () => MostBookScreen()),
          GetPage(
              name: PageRes.mostBookDetailsScreen,
              page: () => MostBookDetailsScreen()),
          // GetPage(name: PageRes.bookings, page: () => BookingScreen()),
          GetPage(name: PageRes.filterScreen, page: () => FilterScreen()),
          GetPage(
              name: PageRes.bookingDetails, page: () => BookingUserDetails()),
          GetPage(
              name: PageRes.bookAppointmentScreen,
              page: () => BookAppointmentScreen()),
        ]);
  }
}

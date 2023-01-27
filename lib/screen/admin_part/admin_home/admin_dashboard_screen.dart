import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/admin_part/admin_chat/messages_screen.dart';
import 'package:salon_app/screen/admin_part/admin_home/admin_dashboard_controller.dart';
import 'package:salon_app/screen/admin_part/admin_home/home/admin_home_screen.dart';
import 'package:salon_app/screen/admin_part/admin_shop_profile/shop_profile/shop_profile_screen.dart';
import 'package:salon_app/utils/asset_res.dart';

class AdminDashboardScreen extends StatelessWidget {
  AdminDashboardScreen({super.key});

  final AdminDashboardController adminDashboardController =
      Get.put(AdminDashboardController());
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Obx(() => adminDashboardController.selectedIndex.value == 0
          ? AdminHomeScreen(
              args: args,
            )
          : adminDashboardController.selectedIndex.value == 1
              ? const Center(
                  child: Text("appointments"),
                )
              : adminDashboardController.selectedIndex.value == 2
                  ? AdminMessagesScreen()
                  : ShopProfileScreen()),
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Obx(() => BottomNavigationBar(
                backgroundColor: const Color(0xffFFFFFF),
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 0,
                currentIndex: adminDashboardController.selectedIndex.value,
                onTap: (index) => adminDashboardController.onItemTapped(index),
                items: [
                  BottomNavigationBarItem(
                      icon: adminDashboardController.selectedIndex.value == 0
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.homeFillIcon,
                              ),
                            )
                          : SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.homeIcon,
                              ),
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: adminDashboardController.selectedIndex.value == 1
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.appointmentFillIcon,
                              ),
                            )
                          : SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.appointmentIcon,
                              ),
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: adminDashboardController.selectedIndex.value == 2
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.chatFillIcon,
                              ),
                            )
                          : SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.chatIcon,
                              ),
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: adminDashboardController.selectedIndex.value == 3
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.shopFillIcon,
                              ),
                            )
                          : SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                AssetRes.shopIcon,
                              ),
                            ),
                      label: ""),
                ],
              ))),
    );
  }
}

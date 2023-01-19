import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screen/user_part/dashboard/dashboard_controller.dart';
import 'package:salon_app/screen/user_part/dashboard/home/home_screen.dart';
import 'package:salon_app/utils/asset_res.dart';
import 'package:salon_app/utils/color_res.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({Key? key}) : super(key: key);
  final DashBoardController dashBoardController =
      Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => dashBoardController.selectedIndex.value == 0
          ? HomeScreen()
          : dashBoardController.selectedIndex.value == 1
              ? const Center(
                  child: Text("location"),
                )
              : dashBoardController.selectedIndex.value == 2
                  ? const Center(
                      child: Text("appointments"),
                    )
                  : dashBoardController.selectedIndex.value == 3
                      ? const Center(
                          child: Text("chat"),
                        )
                      : const Center(
                          child: Text("user"),
                        )),
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Obx(() => BottomNavigationBar(
                backgroundColor: const Color(0xffFFFFFF),
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 0,
                currentIndex: dashBoardController.selectedIndex.value,
                onTap: (index) => dashBoardController.onItemTapped(index),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                          dashBoardController.selectedIndex.value == 0
                              ? Icons.home
                              : Icons.home_outlined,
                          color: ColorRes.indicator),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(
                          dashBoardController.selectedIndex.value == 1
                              ? Icons.location_on
                              : Icons.location_on_outlined,
                          color: ColorRes.indicator),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: dashBoardController.selectedIndex.value == 2
                          ? Image.asset(
                              AssetRes.appointmentDark,
                              height: 20,
                            )
                          : Image.asset(
                              AssetRes.appointments,
                              height: 20,
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: dashBoardController.selectedIndex.value == 3
                          ? Image.asset(
                              AssetRes.chatDark,
                              height: 20,
                            )
                          : Image.asset(
                              AssetRes.chat,
                              height: 20,
                            ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: dashBoardController.selectedIndex.value == 4
                          ? Image.asset(
                              AssetRes.userIcon,
                              height: 20,
                            )
                          : Image.asset(
                              AssetRes.userL,
                              height: 20,
                            ),
                      label: ""),
                ],
              ))),
    );
  }
}

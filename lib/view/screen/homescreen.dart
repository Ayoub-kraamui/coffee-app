import 'package:coffee/controller/homescreen_controller.dart';
import 'package:coffee/view/widget/home/background_top_homescreen.dart';
import 'package:coffee/view/widget/home/custombottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder:
          (controller) => Scaffold(
            body: Stack(
              children: [
                const BackgroundTopHomeScreen(),
                SafeArea(
                  child: WillPopScope(
                    child: controller.listPage.elementAt(
                      controller.currentPage,
                    ),
                    onWillPop: () {
                      controller.exitFromApp();
                      return Future.value(false);
                    },
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const CustomBottomNavigationBarHome(),
          ),
    );
  }
}

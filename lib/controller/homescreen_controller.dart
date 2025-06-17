import 'dart:io';

import 'package:coffee/core/class/appcolor.dart';
import 'package:coffee/view/screen/cart.dart';
import 'package:coffee/view/screen/home.dart';
import 'package:coffee/view/screen/myfavorite.dart';
import 'package:coffee/view/screen/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  chingePage(int index);
  exitFromApp();
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List<Widget> listPage = const [
    Home(),
    MyFavorite(),
    Cart(),
    NotificationView(),
  ];
  List buttonAppBar = [
    {"icon": Icons.home},
    {"icon": Icons.favorite_border_outlined},
    {"icon": Icons.shopping_bag_outlined},
    {"icon": Icons.notifications_none_outlined},
  ];
  List<IconData> iconButtonAppBar = [
    Icons.home,
    Icons.settings,
    Icons.person,
    Icons.favorite,
  ];
  @override
  chingePage(int index) {
    currentPage = index;
    update();
  }

  @override
  exitFromApp() {
    Get.defaultDialog(
      title: "warning",
      middleText: "Do you want To Exit The app",
      confirmTextColor: AppColor.secondColor,
      buttonColor: AppColor.thirColor,
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
      onConfirm: () {
        exit(0);
      },
      onCancel: () {},
      cancelTextColor: AppColor.secondColor,
    );
  }
}

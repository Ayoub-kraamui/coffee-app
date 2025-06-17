import 'package:coffee/core/class/appcolor.dart';
import 'package:coffee/core/class/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OrderController extends GetxController {
  intialData();
  addItems();
  deleteItems();
}

class OrderControllerImp extends OrderController {
  int itemsCount = 0;
  int? itemsId;
  String? itemsName;
  String? itemsDesc;
  String? itemsImage;
  double? itemsPrice;
  double? itemsRate;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() async {
    itemsId = Get.arguments["itemsId"];
    itemsName = Get.arguments["itemsName"];
    itemsDesc = Get.arguments["itemsDesc"];
    itemsImage = Get.arguments["itemsImage"];
    itemsPrice = Get.arguments["itemsPrice"];
    itemsRate = Get.arguments["itemsRate"];

    itemsCount = Get.arguments["itemsCount"];
    update();
  }

  @override
  addItems() async {
    itemsCount = itemsCount + 1;

    update();
  }

  @override
  deleteItems() async {
    if (itemsCount > 0) {
      itemsCount = itemsCount - 1;
      update();
    } else if (itemsCount <= 0) {
      Get.rawSnackbar(
        titleText: const Text(
          "اشعار",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        messageText: const Text(
          "لقد تم حذف جميع الطلبات",
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: AppColor.primaryColor,
      );
    }
    update();
  }

  gotToDleviryPage() {
    Get.toNamed(AppRoute.delviry);
  }
}

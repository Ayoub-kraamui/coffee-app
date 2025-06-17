import 'package:coffee/core/class/appcolor.dart';
import 'package:coffee/core/class/approute.dart';
import 'package:coffee/core/class/imageassets.dart';
import 'package:coffee/data/model/ItemsModle.dart';
import 'package:coffee/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeControllerImp extends GetxController {
  TextEditingController? search;
  List<CategoriesModel> categories = [
    CategoriesModel(categoriesId: 1, categoriesName: "All coffee"),
    CategoriesModel(categoriesId: 1, categoriesName: "Machiato"),
    CategoriesModel(categoriesId: 1, categoriesName: "Latte"),
    CategoriesModel(categoriesId: 1, categoriesName: "Americano"),
  ];

  List<ItemsModle> items = [
    ItemsModle(
      itemsId: 1,
      itemsName: "Coffee Mocha",
      itemsDesc: "Deep Foam",
      itemsImage: AppImageAssets.productOne,
      itemsPrice: 4.53,
      itemsRate: 4.8,
      itemsCount: 2,
    ),
    ItemsModle(
      itemsId: 1,
      itemsName: "Flat White",
      itemsDesc: "Espersoo",
      itemsImage: AppImageAssets.productTwo,

      itemsPrice: 4.53,
      itemsRate: 4.8,
      itemsCount: 3,
    ),
    ItemsModle(
      itemsId: 1,
      itemsName: "Coffee Mocha",
      itemsDesc: "Deep Foam",
      itemsImage: AppImageAssets.producThree,

      itemsPrice: 4.53,
      itemsRate: 4.8,
      itemsCount: 4,
    ),
    ItemsModle(
      itemsId: 1,
      itemsName: "Flat White",
      itemsDesc: "Espersoo",
      itemsImage: AppImageAssets.productFour,
      itemsPrice: 4.53,
      itemsRate: 4.8,
      itemsCount: 5,
    ),
  ];

  void onInit() {
    getData();
    search = TextEditingController();

    super.onInit();
  }

  // sendaccessToken() async {
  //   statusRequest = StatusRequest.loading;
  //   String accessToken = await GetSrevesKey.getServesToken();
  //   var response = await homeData.sendserverKey(accessToken.toString());
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       categories.addAll(response['categories']['data']);
  //       items.addAll(response['items']['data']);
  //     } else {
  //       statusRequest = StatusRequest.failure;
  //     }
  //   }
  //   update();
  // }

  getData() async {
    update();
  }

  gotToItems(List categoies, int slectedCat, String categorId) {
    Get.toNamed(
      AppRoute.items,
      arguments: {
        "categoies": categoies,
        "slectedCat": slectedCat,
        "categorId": categorId,
      },
    );
  }

  gotToProductDetails(
    ItemsModle itemsModle,
    int itemsid,
    String itemsname,
    String itemsdesc,
    String itemsimage,
    double itemsprice,
    double itemsrate,
    int itemscount,
  ) {
    Get.toNamed(
      AppRoute.itemsdetails,
      arguments: {
        "itemsModle": itemsModle,
        "itemsId": itemsid,
        "itemsName": itemsname,
        "itemsDesc": itemsdesc,
        "itemsImage": itemsimage,
        "itemsPrice": itemsprice,
        "itemsRate": itemsrate,
        "itemsCount": itemscount,
      },
    );
  }

  addOrderCart() {
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
        "تم !ضافة المنتج الى السلة",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      backgroundColor: AppColor.primaryColor,
    );
  }
}

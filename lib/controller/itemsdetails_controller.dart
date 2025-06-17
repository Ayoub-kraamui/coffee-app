import 'package:coffee/core/class/approute.dart';
import 'package:coffee/data/model/ItemsModle.dart';
import 'package:get/get.dart';

abstract class ItemsDetailsController extends GetxController {
  intialData();
  goToCart();
}

class ItemsDetailsControllerImp extends ItemsDetailsController {
  late ItemsModle itemsModle;
  //CartControllerImp cartController = Get.put(CartControllerImp());
  int? itemsId;
  int active = 1;
  String? itemsName;
  String? itemsDesc;
  String? itemsImage;
  double? itemsPrice;
  double? itemsRate;
  int? itemsCount;
  @override
  goToCart() {
    Get.toNamed(AppRoute.cart);
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  List<Map> subItems = [
    {"name": "S", "id": 1, "active": "0"},
    {"name": "M", "id": 2, "active": "1"},
    {"name": "L", "id": 3, "active": "0"},
  ];

  @override
  intialData() async {
    itemsModle = Get.arguments["itemsModle"];
    itemsId = Get.arguments["itemsId"];
    itemsName = Get.arguments["itemsName"];
    itemsDesc = Get.arguments["itemsDesc"];
    itemsImage = Get.arguments["itemsImage"];
    itemsPrice = Get.arguments["itemsPrice"];
    itemsRate = Get.arguments["itemsRate"];
    itemsCount = Get.arguments["itemsCount"];
    update();
  }

  gotToOrderPage(
    int itemsid,
    String itemsname,
    String itemsdesc,
    String itemsimage,
    double itemsprice,
    double itemsrate,
    int itemscount,
  ) {
    Get.toNamed(
      AppRoute.order,
      arguments: {
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
}

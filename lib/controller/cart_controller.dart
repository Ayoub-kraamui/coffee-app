import 'package:get/get.dart';

abstract class CartController extends GetxController {
  add(int itemsid);
  delete(int itemsid);
  cartView();
  resetVarCart();
  refreshPage();
}

class CartControllerImp extends CartController {
  @override
  void onInit() {
    cartView();
    super.onInit();
  }

  @override
  add(int itemsid) {}

  @override
  cartView() {}

  @override
  delete(int itemsid) {}

  @override
  refreshPage() {}

  @override
  resetVarCart() {}
}

import 'package:get/get.dart';

abstract class MyFavoriteController extends GetxController {
  getData();
  deleteMyFavorite(String favoriteid);
}

class MyFavoriteControllerImp extends MyFavoriteController {
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  deleteMyFavorite(String favoriteid) {}

  @override
  getData() {}
}

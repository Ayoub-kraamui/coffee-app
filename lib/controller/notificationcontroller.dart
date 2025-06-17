import 'package:get/get.dart';

class NotificationController extends GetxController {
  List data = [];
  getData() async {
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

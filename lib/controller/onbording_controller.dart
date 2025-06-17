import 'package:coffee/core/class/approute.dart';
import 'package:get/get.dart';

class OnBordingController extends GetxController {
  next() {
    Get.offAllNamed(AppRoute.home);
  }
}

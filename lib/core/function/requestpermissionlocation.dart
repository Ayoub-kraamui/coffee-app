import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

requestPermissionLocation() async {
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Get.snackbar("تنبيه", "الرجاء تشغيل خدمة تحديد المواقع");
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Get.snackbar("تنبيه", "الرجاء اعطاء صلاحية الموقع للتطبيق ");
    }
  }
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Get.snackbar("تنبيه", "لا يمكن استعمال التطبيق من دون الموقع");
  }
}

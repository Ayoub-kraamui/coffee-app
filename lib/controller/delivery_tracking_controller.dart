import 'dart:async';
import 'package:coffee/core/function/getdecodepolyline.dart';
import 'package:coffee/core/function/requestpermissionlocation.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeliveryTrackingController extends GetxController {
  GoogleMapController? gmc;
  List<Marker> markers = [];
  CameraPosition? cameraPosition;
  double? destlat;
  double? destlong;
  double? currentlat;
  double? currentlong;
  Set<Polyline> polylintSet = {};

  intialData() {
    cameraPosition = CameraPosition(
      target: LatLng(14.361256, 44.905632),
      zoom: 12.4746,
    );

    markers.add(
      Marker(
        markerId: MarkerId("current"),
        position: LatLng(14.361256, 44.905632),
      ),
    );
  }

  initPolyline() async {
    destlat = 14.361256;
    destlong = 44.905632;
    currentlat = 14.1419291;
    currentlong = 14.1419291;
    await Future.delayed(Duration(seconds: 1));
    polylintSet = await getPolyLine(currentlat, currentlong, destlat, destlong);
    update();
  }

  @override
  void onInit() {
    intialData();
    initPolyline();
    requestPermissionLocation();
    super.onInit();
  }
}

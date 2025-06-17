import 'package:coffee/controller/delivery_tracking_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomContainrGoogleMap extends StatelessWidget {
  const CustomContainrGoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GetBuilder<DeliveryTrackingController>(
        builder:
            (controller) => Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,

                child: GoogleMap(
                  polylines: controller.polylintSet,
                  mapType: MapType.normal,
                  markers: controller.markers.toSet(),
                  initialCameraPosition: controller.cameraPosition!,
                  onMapCreated: (GoogleMapController controllermap) {
                    controller.gmc = controllermap;
                  },
                ),
              ),
            ),
      ),
    );
  }
}

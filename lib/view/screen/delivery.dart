import 'package:coffee/controller/delivery_tracking_controller.dart';
import 'package:coffee/view/widget/delivery/Informatio_delivery.dart';
import 'package:coffee/view/widget/delivery/customcontainar_googlemap.dart';
import 'package:coffee/view/widget/delivery/iconstop_googlemap.dart';
import 'package:coffee/view/widget/delivery/information_driver_delivery.dart';
import 'package:coffee/view/widget/delivery/information_driverdelivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryTrackingScreen extends StatelessWidget {
  const DeliveryTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DeliveryTrackingController());

    return Scaffold(
      body: Stack(
        children: [
          const CustomContainrGoogleMap(),

          const IconsTopGoogleMap(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InformatioDelivery(),
                  SizedBox(height: 16),

                  DeliveryOrder(),
                  InformationDriverDelivery(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

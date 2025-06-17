import 'package:coffee/controller/itemsdetails_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TopPageItemDetails extends GetView<ItemsDetailsControllerImp> {
  const TopPageItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(height: 100),
        Positioned(
          top: 30.0,
          right: 20,
          left: 20,
          child: Hero(
            tag: "${controller.itemsId}",
            child: Image.asset(
              "${controller.itemsImage}",
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

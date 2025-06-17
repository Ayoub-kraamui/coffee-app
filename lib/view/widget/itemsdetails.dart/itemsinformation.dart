import 'package:coffee/controller/itemsdetails_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemsInformation extends GetView<ItemsDetailsControllerImp> {
  const CustomItemsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          controller.itemsName!,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              controller.itemsDesc!,
              style: TextStyle(fontSize: 15, color: AppColor.grey),
            ),
            const SizedBox(width: 180),
            Row(
              children: const [
                Icon(
                  Icons.delivery_dining,
                  color: AppColor.primaryColor,
                  size: 30,
                ),
                SizedBox(width: 25),
                Icon(Icons.coffee, color: AppColor.primaryColor, size: 30),
                SizedBox(width: 25),
                Icon(Icons.local_drink, color: AppColor.primaryColor, size: 30),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 30),
            const SizedBox(width: 4),
            Text(
              "${controller.itemsRate!}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 4),

            Text(
              "(230)",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColor.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

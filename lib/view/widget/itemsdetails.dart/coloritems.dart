import 'package:coffee/controller/itemsdetails_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorItems extends GetView<ItemsDetailsControllerImp> {
  const ColorItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Size",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              controller.subItems.length,
              (index) => Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        controller.subItems[index]["active"] == "1"
                            ? AppColor.primaryColor
                            : Colors.grey,
                  ),
                  color:
                      controller.subItems[index]["active"] == "1"
                          ? Colors.orange.shade50
                          : null,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "${controller.subItems[index]["name"]}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color:
                        controller.subItems[index]["active"] == "1"
                            ? AppColor.primaryColor
                            : AppColor.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

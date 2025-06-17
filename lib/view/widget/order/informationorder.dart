import 'package:coffee/controller/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfromationOrder extends GetView<OrderControllerImp> {
  const InfromationOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            controller.itemsImage!,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.itemsName!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                controller.itemsDesc!,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),

        GetBuilder<OrderControllerImp>(
          builder: (controller) {
            return Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.deleteItems();
                  },
                  icon: const Icon(Icons.remove),
                ),
                SizedBox(width: 15),

                Text(
                  "${controller.itemsCount}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 15),

                IconButton(
                  onPressed: () {
                    controller.addItems();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

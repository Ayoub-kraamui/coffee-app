import 'package:coffee/controller/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoTotalPriceOrder extends GetView<OrderControllerImp> {
  const InfoTotalPriceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Payment Summary",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Price", style: TextStyle(fontSize: 20, color: Colors.grey)),
            const SizedBox(height: 8),

            Text(
              "${controller.itemsPrice!}",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Delivery Fee",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "\$2.0",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "\$1.0",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

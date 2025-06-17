import 'package:coffee/controller/order_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentTypeAndButton extends GetView<OrderControllerImp> {
  const PaymentTypeAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,

      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: const [
                Icon(
                  Icons.account_balance_wallet,
                  color: AppColor.primaryColor,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cash/Wallet"),
                    Text("\$5.53", style: TextStyle(color: Colors.brown)),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_downward_sharp, color: AppColor.primaryColor),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                controller.gotToDleviryPage();
              },
              child: const Text(
                "Order",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

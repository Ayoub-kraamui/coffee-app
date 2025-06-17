import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';

class CustomItemsDesc extends StatelessWidget {
  const CustomItemsDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
          style: TextStyle(fontSize: 18, color: AppColor.grey),
        ),
        // const Text(
        //   "Read More",
        //   style: TextStyle(
        //     fontSize: 18,
        //     fontWeight: FontWeight.bold,
        //     color: AppColor.primaryColor,
        //   ),
        // ),
        const SizedBox(height: 20),
      ],
    );
  }
}

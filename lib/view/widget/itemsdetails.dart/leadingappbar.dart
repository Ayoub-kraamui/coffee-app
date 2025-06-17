import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.black, size: 25),
      ),
    );
  }
}

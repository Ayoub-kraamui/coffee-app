import 'package:coffee/controller/onbording_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBording extends GetView<OnBordingController> {
  const CustomButtonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 60,
      width: 350,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,

        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: Text(
          "Get Started",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

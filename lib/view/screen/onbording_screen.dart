import 'package:coffee/controller/onbording_controller.dart';
import 'package:coffee/view/widget/onbording/custombutton.dart';
import 'package:coffee/view/widget/onbording/image_and_contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const CustomImageAndContantOnBording(),
          const CustomButtonOnBording(),
        ],
      ),
    );
  }
}

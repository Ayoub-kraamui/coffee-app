import 'package:coffee/controller/homescreen_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonAppBar extends GetView<HomeScreenControllerImp> {
  final IconData icon;
  final bool active;
  final void Function()? onPressed;

  const CustomButtonAppBar({
    Key? key,
    required this.icon,
    required this.active,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: active == true ? AppColor.primaryColor : AppColor.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}

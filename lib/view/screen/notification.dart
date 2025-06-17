import 'package:coffee/controller/notificationcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NotificationController());
    return Scaffold(
      body: Center(
        child: Text(
          "Notification",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

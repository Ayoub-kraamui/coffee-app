import 'package:coffee/core/class/appcolor.dart';
import 'package:coffee/core/class/imageassets.dart';
import 'package:flutter/material.dart';

class CustomImageAndContantOnBording extends StatelessWidget {
  const CustomImageAndContantOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Image.asset(
            AppImageAssets.onBordingImage,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 620),
          child: ListTile(
            title: Text(
              "Fall in Love with \n Coffee in Blissful\n Delight!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              "Welcome to our cozy coffee corner, where\n every cup is a delightful for you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

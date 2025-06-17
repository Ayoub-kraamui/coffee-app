import 'package:coffee/core/class/appcolor.dart';
import 'package:flutter/material.dart';

class PriceAndButtonItems extends StatelessWidget {
  final String title;
  final String price;
  final String titleButton;
  final void Function()? onPressed;
  const PriceAndButtonItems({
    super.key,
    required this.title,
    required this.price,
    required this.titleButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 20, color: Colors.grey)),
            Text(
              price,
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primaryColor,

            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            titleButton,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTopContantHomeScreen extends StatelessWidget {
  const CustomTopContantHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Location", style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bilzen, Tanjungbalai",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey[400],
              ),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ],
    );
  }
}

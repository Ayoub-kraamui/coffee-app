import 'package:flutter/material.dart';

class IconsTopGoogleMap extends StatelessWidget {
  const IconsTopGoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Positioned(
        top: 10,
        left: 10,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Icon(Icons.arrow_back_ios_sharp, size: 30),
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.all(20),
              child: Icon(Icons.location_searching, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}

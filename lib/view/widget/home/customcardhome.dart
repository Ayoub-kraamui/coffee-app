import 'package:coffee/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  final String titleOne;
  final String titletwo;
  final String subTitle;
  final String image;

  const CustomCardHome({
    super.key,
    required this.titleOne,
    required this.titletwo,
    required this.subTitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 440,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: 160,
              width: 440,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 33),
            padding: EdgeInsets.all(3),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red,
            ),
            child: Text(
              titleOne,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 45, horizontal: 20),
            child: ListTile(
              title: Text(
                textAlign: TextAlign.left,
                titletwo,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black87,
                ),
              ),
              subtitle: Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  textAlign: TextAlign.left,
                  subTitle,
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
          Positioned(top: 20, right: 10, child: Container()),
        ],
      ),
    );
  }
}

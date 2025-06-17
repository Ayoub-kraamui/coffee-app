import 'package:coffee/controller/home_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:coffee/data/model/ItemsModle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsHome extends GetView<HomeControllerImp> {
  final ItemsModle itemsModle;
  final int itemsId;
  final String itemsName;
  final String itemsDesc;
  final String itemsImage;
  final double itemsPrice;
  final double itemsRate;
  final int itemsCount;

  const ItemsHome({
    super.key,
    required this.itemsModle,
    required this.itemsId,
    required this.itemsName,
    required this.itemsDesc,
    required this.itemsImage,
    required this.itemsPrice,
    required this.itemsRate,
    required this.itemsCount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotToProductDetails(
          itemsModle,
          itemsId,
          itemsName,
          itemsDesc,
          itemsImage,
          itemsPrice,
          itemsRate,
          itemsCount,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Stack(
                children: [
                  Image.asset(
                    "${itemsModle.itemsImage}",
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star, size: 15, color: Colors.orange),
                        SizedBox(width: 2),
                        Text(
                          "4.8",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${itemsModle.itemsName}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${itemsModle.itemsDesc}",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${itemsModle.itemsPrice}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {
                            controller.addOrderCart();
                          },
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          iconSize: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

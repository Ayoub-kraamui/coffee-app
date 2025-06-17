import 'package:coffee/controller/home_controller.dart';
import 'package:coffee/view/widget/home/itemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 3 / 4,
        ),
        itemCount: controller.items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ItemsHome(
            itemsModle: controller.items[index],
            itemsId: controller.items[index].itemsId!,
            itemsName: controller.items[index].itemsName!,
            itemsDesc: controller.items[index].itemsDesc!,
            itemsImage: controller.items[index].itemsImage!,
            itemsPrice: controller.items[index].itemsPrice!,
            itemsRate: controller.items[index].itemsRate!,
            itemsCount: controller.items[index].itemsCount!,
          );
        },
      ),
    );
  }
}

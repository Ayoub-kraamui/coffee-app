import 'package:coffee/controller/home_controller.dart';
import 'package:coffee/core/class/appcolor.dart';
import 'package:coffee/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel: controller.categories[index],
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => controller.gotToItems(
            controller.categories,
            i!,
            categoriesModel.categoriesId!.toString(),
          ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: i == 0 ? AppColor.primaryColor : null,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(10),

            child: Text(
              "${categoriesModel.categoriesName}",
              style: TextStyle(
                fontSize: 20,
                color: i == 0 ? Colors.white : Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:coffee/controller/home_controller.dart';
import 'package:coffee/core/class/imageassets.dart';
import 'package:coffee/view/widget/customappbar.dart';
import 'package:coffee/view/widget/home/Customtopcontant_homescreen.dart';
import 'package:coffee/view/widget/home/Listcategories.dart';
import 'package:coffee/view/widget/home/customcardhome.dart';
import 'package:coffee/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder:
          (controller) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const CustomTopContantHomeScreen(),
                const SizedBox(height: 30),
                CustomAppBar(
                  mycontroller: controller.search!,
                  title: "Search coffee",
                  onPressedSearch: () {},
                  onPressedIconFavorite: () {},
                  onChanged: (val) {},
                ),
                CustomCardHome(
                  titleOne: "Promo",
                  titletwo: "Buy one get",
                  subTitle: "one FREE",
                  image: AppImageAssets.bannerImage,
                ),
                const ListCategoriesHome(),
                const SizedBox(height: 40),
                const ListItemsHome(),
              ],
            ),
          ),
    );
  }
}

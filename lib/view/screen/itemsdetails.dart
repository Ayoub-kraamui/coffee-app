import 'package:coffee/controller/itemsdetails_controller.dart';
import 'package:coffee/view/widget/itemsdetails.dart/actionsappbar.dart';
import 'package:coffee/view/widget/itemsdetails.dart/customitemsdesc.dart';
import 'package:coffee/view/widget/itemsdetails.dart/itemsinformation.dart';
import 'package:coffee/view/widget/itemsdetails.dart/coloritems.dart';
import 'package:coffee/view/widget/itemsdetails.dart/leadingappbar.dart';
import 'package:coffee/view/widget/itemsdetails.dart/priceandbutton.dart';
import 'package:coffee/view/widget/itemsdetails.dart/toppageitemdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsDetailsControllerImp controller = Get.put(ItemsDetailsControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const LeadingAppBar(),
        title: const Text(
          "Detail",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [const ActionsAppAbar()],
      ),
      body: ListView(
        children: [
          const TopPageItemDetails(),
          const SizedBox(height: 170),
          Container(
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomItemsInformation(),
                const SizedBox(height: 20),
                const Divider(height: 1, color: Colors.grey),
                const SizedBox(height: 20),
                const CustomItemsDesc(),
                const ColorItems(),
                const SizedBox(height: 70),
                PriceAndButtonItems(
                  title: "Price",
                  price: "\$ 4.53",
                  titleButton: "Buy Now",
                  onPressed: () {
                    controller.gotToOrderPage(
                      controller.itemsId!,
                      controller.itemsName!,
                      controller.itemsDesc!,
                      controller.itemsImage!,
                      controller.itemsPrice!,
                      controller.itemsRate!,
                      controller.itemsCount!,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

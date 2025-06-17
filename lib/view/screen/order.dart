import 'package:coffee/controller/order_controller.dart';
import 'package:coffee/view/widget/order/carddiscount.dart';
import 'package:coffee/view/widget/order/contantop_orderscreen.dart';
import 'package:coffee/view/widget/order/delivrypickupswitch.dart';
import 'package:coffee/view/widget/order/info_totalprice_order.dart';
import 'package:coffee/view/widget/order/informationorder.dart';
import 'package:coffee/view/widget/order/payment_type_and_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        title: const Text(
          "Order",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // طريفة استلام الطلب
            DelivryPickUpSwitch(),
            SizedBox(height: 16),
            // معلومات تسليم الطلب
            ContantTopOrderScren(),
            Divider(height: 40),
            // معلومات الطلب
            InfromationOrder(),
            Divider(height: 40, color: Color.fromARGB(255, 241, 207, 196)),
            // السعر ورسوم التوصيل
            CardDiscountOrder(),
            InfoTotalPriceOrder(),
            SizedBox(height: 20),
            // طريقة الدفع
            PaymentTypeAndButton(),
          ],
        ),
      ),
    );
  }
}

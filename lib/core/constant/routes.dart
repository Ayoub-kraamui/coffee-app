import 'package:coffee/core/class/approute.dart';
import 'package:coffee/view/screen/cart.dart';
import 'package:coffee/view/screen/delivery.dart';
import 'package:coffee/view/screen/homescreen.dart';
import 'package:coffee/view/screen/itemsdetails.dart';
import 'package:coffee/view/screen/myfavorite.dart';
import 'package:coffee/view/screen/onbording_screen.dart';
import 'package:coffee/view/screen/order.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoute.onBordingScreen, page: () => OnBordingScreen()),
  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  GetPage(name: AppRoute.itemsdetails, page: () => const ItemsDetails()),
  GetPage(name: AppRoute.myfavorite, page: () => const MyFavorite()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
  GetPage(name: AppRoute.order, page: () => const OrderPage()),
  GetPage(name: AppRoute.delviry, page: () => const DeliveryTrackingScreen()),
];

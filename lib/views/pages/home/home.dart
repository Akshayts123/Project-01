
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/views/pages/home/widgets/body.dart';
import '../../../controller/home_controller.dart';
import '../../../controller/product_controller.dart';
import '../../../controller/splash_controller.dart';
import '../../../controller/theme_controller.dart';
final HomeController homeController = Get.find<HomeController>();
final ProductController productController = Get.find<ProductController>();
final ThemeController themeController = Get.find<ThemeController>();
class HomeScreen extends GetView<HomeController> {
  final SplashScreenViewModel coffeeController =
      Get.put(SplashScreenViewModel());
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
  }
}

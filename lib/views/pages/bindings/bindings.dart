import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:project/controller/theme_controller.dart';

import '../../../controller/data_controller.dart';
import '../../../controller/home_controller.dart';
import '../../../controller/items_controller.dart';
import '../../../controller/product_controller.dart';
import '../../../controller/splash_controller.dart';


class BaseBindings implements Bindings {
  @override
  void dependencies() async {
    Get.put(SplashScreenViewModel());
    Get.put(ThemeController());
    Get.put(HomeController());
    Get.put(DataController());
    Get.put(ProductController());

  }
}
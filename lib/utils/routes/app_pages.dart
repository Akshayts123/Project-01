import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:project/views/pages/dashboard/main_screen.dart';
import '../../views/pages/bindings/bindings.dart';
import '../../views/pages/home/home.dart';
import '../../views/pages/splash/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const splash = Routes.SPLASH;
  static const dash = Routes.DASH;
  static const home = Routes.HOME;

  static final routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      binding: BaseBindings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: dash,
      page: () => Dashboard(),
      binding: BaseBindings(),
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
      binding: BaseBindings(),
    ),

  ];
}
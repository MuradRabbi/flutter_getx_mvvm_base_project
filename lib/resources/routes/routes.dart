import 'package:flutter_getx_mvvm_base_project/resources/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../view/login/login_screen.dart';
import '../../view/splash_screen.dart';


class AppRoutes {
  static appRoutes() => [
    GetPage(
        name: RouteName.splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 250)

    ),
    GetPage(
        name: RouteName.loginScreen,
        page: () => const LoginScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 250)

    ),
  ];
}
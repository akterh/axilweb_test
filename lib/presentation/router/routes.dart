
import 'package:easy_localization/easy_localization.dart';
import 'package:ecom_axilweb/presentation/screens/product/view/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../screens/splash/view/splash_screen.dart';


class Routes {
  // global routes
  static const String splash = "/";
  static const String product = "/product";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // global routes start
      case Routes.splash:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
          settings: routeSettings,
        );

      case Routes.product:
        return CupertinoPageRoute(
          builder: (_) => const ProductScreen(),
          settings: routeSettings,
        );



      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return CupertinoPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noPageFound.tr()),
        ),
        body: Center(
          child: Text(AppStrings.noPageFound.tr()),
        ),
      ),
    );
  }
}

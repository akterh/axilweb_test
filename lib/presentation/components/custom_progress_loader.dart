import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ecom_axilweb/core/constants/app_colors.dart';

showProgressDialog() {
  if (!EasyLoading.isShow) {
    EasyLoading.show(
      dismissOnTap: false,
    );
  }
}

dismissProgressDialog() {
  if (EasyLoading.isShow) {
    EasyLoading.dismiss();
  }
}

void configLoading() {
  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor =
        AppColors.kPrimaryColor // Background color of the loading indicator
    ..indicatorColor =
        AppColors.kWhiteColor // Color of the loading indicator itself
    ..textColor = Colors.white // Color of the text
    ..maskColor = Colors.blue.withOpacity(0.5) // Color of the mask
    ..indicatorType = EasyLoadingIndicatorType.dualRing
    ..userInteractions = false; // Type of the loading indicator
}

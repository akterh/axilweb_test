import 'package:ecom_axilweb/core/app/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_colors.dart';
import '../../generated/assets.dart';
import 'custom_svg.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton(
      {super.key,
      this.icon,
      this.onTap,
      this.iconSize,
      this.iconColors,
      this.backGroundColor,
      this.padding,
      this.shadow,
      this.tKey});

  final String? icon;
  final double? iconSize;
  final Color? iconColors;
  final VoidCallback? onTap;
  final Color? backGroundColor;
  final List<BoxShadow>? shadow;
  final EdgeInsetsGeometry? padding;
  final GlobalKey? tKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? GetContext.back,
      radius: 30.r,
      borderRadius: BorderRadius.circular(30.r),
      splashColor: AppColors.kPartialColor.withOpacity(0.2),
      child: Container(
        key: tKey,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: shadow ?? [AppColors.kCircularButtonShadow],
          color: backGroundColor ?? AppColors.kWhiteColor,
        ),
        child: Padding(
          padding: padding ?? REdgeInsets.all(16.r),
          child: CustomSvg(
            icon: icon ?? Assets.iconsHome,
            size: iconSize ?? 16.r,
            color: iconColors ?? AppColors.kGrayColor950,
          ),
        ),
      ),
    );
  }
}

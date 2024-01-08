import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonOne extends StatelessWidget {
  AppbarTrailingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 58.v,
          width: 50.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
          ),
        ),
      ),
    );
  }
}

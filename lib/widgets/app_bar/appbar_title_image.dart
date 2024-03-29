import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleImage extends StatelessWidget {
  AppbarTitleImage({
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
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.1,
          child: CustomImageView(
            imagePath: imagePath,
            height: 80.v,
            width: 393.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

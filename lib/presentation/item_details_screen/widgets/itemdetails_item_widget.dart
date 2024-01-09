import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ItemdetailsItemWidget extends StatelessWidget {
  const ItemdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle18518,
        height: 58.v,
        width: 71.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}

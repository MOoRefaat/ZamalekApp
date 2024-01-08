import '../models/itemdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ItemdetailsItemWidget extends StatelessWidget {
  ItemdetailsItemWidget(
    this.itemdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemdetailsItemModel itemdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: CustomImageView(
        imagePath: itemdetailsItemModelObj?.rectangle,
        height: 58.v,
        width: 71.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}

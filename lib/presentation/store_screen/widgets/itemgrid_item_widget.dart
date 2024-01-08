import '../models/itemgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ItemgridItemWidget extends StatelessWidget {
  ItemgridItemWidget(
    this.itemgridItemModelObj, {
    Key? key,
    this.onTapItem3,
  }) : super(
          key: key,
        );

  ItemgridItemModel itemgridItemModelObj;

  VoidCallback? onTapItem3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapItem3!.call();
      },
      child: Container(
        padding: EdgeInsets.all(4.h),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 140.v,
              width: 157.h,
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: CustomImageView(
                imagePath: itemgridItemModelObj?.image,
                height: 124.v,
                width: 92.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Text(
                itemgridItemModelObj.text!,
                style: TextStyle(
                  color: theme.colorScheme.primaryContainer,
                  fontSize: 12.fSize,
                  fontFamily: 'DIN Next LT Arabic',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    child: Text(
                      itemgridItemModelObj.currency!,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 10.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      itemgridItemModelObj.amount!,
                      style: TextStyle(
                        color: theme.colorScheme.primaryContainer,
                        fontSize: 16.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

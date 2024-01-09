import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Item3ItemWidget extends StatelessWidget {
  Item3ItemWidget({
    Key? key,
    this.onTapItem3,
  }) : super(
          key: key,
        );

  VoidCallback? onTapItem3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
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
                    imagePath: ImageConstant.imgDownload16R,
                    height: 124.v,
                    width: 92.h,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    "قميص مباراة الزمالك الأحتياطي",
                    textAlign: TextAlign.right,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 10.v,
                        ),
                        child: Text(
                          "ج.م".toUpperCase(),
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 10.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "150",
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
        ),
      ),
    );
  }
}

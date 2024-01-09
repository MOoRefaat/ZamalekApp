import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310.h,
      child: GestureDetector(
        onTap: () {
          onTapUserProfile!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle18511,
                height: 132.v,
                width: 278.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 278.h,
                child: Text(
                  "موعد مباراة الزمالك أمام بيراميدز في الدوري والقناة الناقلة",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: theme.colorScheme.primaryContainer,
                    fontSize: 14.fSize,
                    fontFamily: 'DIN Next LT Arabic',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "20 سبتمبر 2023",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: appTheme.blueGray300,
                    fontSize: 10.fSize,
                    fontFamily: 'DIN Next LT Arabic',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

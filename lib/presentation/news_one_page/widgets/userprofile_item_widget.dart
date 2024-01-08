import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

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
                imagePath: userprofileItemModelObj?.image,
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
                  userprofileItemModelObj.title!,
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
                  userprofileItemModelObj.date!,
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

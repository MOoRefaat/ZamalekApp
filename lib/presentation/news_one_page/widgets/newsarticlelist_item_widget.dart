import '../models/newsarticlelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NewsarticlelistItemWidget extends StatelessWidget {
  NewsarticlelistItemWidget(
    this.newsarticlelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewsarticlelistItemModel newsarticlelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 201.h,
                  child: Text(
                    newsarticlelistItemModelObj.title!,
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
                    newsarticlelistItemModelObj.date!,
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
          CustomImageView(
            imagePath: newsarticlelistItemModelObj?.image,
            height: 80.v,
            width: 100.h,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
        ],
      ),
    );
  }
}

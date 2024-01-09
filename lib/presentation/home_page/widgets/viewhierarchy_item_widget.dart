import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueGray300.withOpacity(0.08),
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            height: 144.v,
            width: 310.h,
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 144.v,
                    width: 208.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 28.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup26,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 12.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 60.v,
                                  width: 43.h,
                                ),
                                SizedBox(height: 8.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "الزمالك",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: theme.colorScheme.primaryContainer,
                                      fontSize: 12.fSize,
                                      fontFamily: 'DIN Next LT Arabic',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 113.v,
                              right: 288.h,
                              bottom: 16.v,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 4.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "مباشر",
                                  style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 10.fSize,
                                    fontFamily: 'DIN Next LT Arabic',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 3.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 51.v),
                            child: Row(
                              children: [
                                Text(
                                  "2",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: theme.colorScheme.primaryContainer,
                                    fontSize: 32.fSize,
                                    fontFamily: 'DIN Next LT Arabic',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    ":",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: theme.colorScheme.primaryContainer,
                                      fontSize: 32.fSize,
                                      fontFamily: 'DIN Next LT Arabic',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "1",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: theme.colorScheme.primaryContainer,
                                      fontSize: 32.fSize,
                                      fontFamily: 'DIN Next LT Arabic',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 16.v),
                            child: Text(
                              "الدوري المصري الممتاز",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: theme.colorScheme.primaryContainer,
                                fontSize: 12.fSize,
                                fontFamily: 'DIN Next LT Arabic',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40.v),
                            child: Text(
                              "الأسبوع 10",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: appTheme.blueGray300,
                                fontSize: 10.fSize,
                                fontFamily: 'DIN Next LT Arabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 16.h),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 19.h,
                      bottom: 20.v,
                    ),
                    child: Text(
                      "الإسماعيلي",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: theme.colorScheme.primaryContainer,
                        fontSize: 12.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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

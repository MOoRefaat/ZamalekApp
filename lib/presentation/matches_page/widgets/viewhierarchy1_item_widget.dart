import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget({
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  VoidCallback? onTapViewHierarchy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapViewHierarchy!.call();
      },
      child: Container(
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 169.v,
              width: 225.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 34.h,
                        vertical: 40.v,
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
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 60.v,
                            width: 43.h,
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "الزمالك",
                              style: TextStyle(
                                color: theme.colorScheme.primaryContainer,
                                fontSize: 12.fSize,
                                fontFamily: 'DIN Next LT Arabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "الدوري المصري الممتاز",
                          style: TextStyle(
                            color: theme.colorScheme.primaryContainer,
                            fontSize: 12.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "الأسبوع 10",
                          style: TextStyle(
                            color: appTheme.blueGray300,
                            fontSize: 10.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        CustomElevatedButton(
                          height: 40.v,
                          width: 77.h,
                          text: "توقع الأن",
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "21 سبتمبر 2023",
                          style: TextStyle(
                            color: appTheme.blueGray300,
                            fontSize: 12.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "09:00 م",
                          style: TextStyle(
                            color: appTheme.blueGray300,
                            fontSize: 14.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 27.h,
                top: 40.v,
                bottom: 46.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage51,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "بيراميدز",
                    style: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontSize: 12.fSize,
                      fontFamily: 'DIN Next LT Arabic',
                      fontWeight: FontWeight.w400,
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

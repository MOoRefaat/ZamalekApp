import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  const ViewhierarchylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Container(
        height: 200.v,
        width: 345.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder24,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgFrame4,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse45200x167,
              height: 200.v,
              width: 167.h,
              alignment: Alignment.centerRight,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              height: 194.v,
              width: 112.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 8.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle10422,
              height: 162.v,
              width: 114.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 56.h),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "الزمالك ",
                            style: CustomTextStyles.headlineSmallOnPrimary_1,
                          ),
                          TextSpan(
                            text: "VS الأهلي",
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "10 اكتوبر 2023",
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontSize: 14.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameOnprimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Text(
                            "ستاد القاهرة الدولي",
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontSize: 14.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameOnprimary24x24,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                      ],
                    ),
                    SizedBox(height: 27.v),
                    CustomElevatedButton(
                      height: 32.v,
                      width: 108.h,
                      text: "حجز تذكرة",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxLinearArrowleft,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillOnPrimary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

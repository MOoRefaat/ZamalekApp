import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildHorizontalScroll(context),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildFiftyFive(
                      context,
                      widgetText: "lbl33".tr,
                      settingImage: ImageConstant.imgIconsaxLinearEdit,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildSixtySeven(
                      context,
                      widgetText: "lbl34".tr,
                      starImage: ImageConstant.imgIconsaxLinearNotetext,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildFiftyFive(
                      context,
                      widgetText: "lbl35".tr,
                      settingImage: ImageConstant.imgIconsaxLinearSetting2,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildSixtySeven(
                      context,
                      widgetText: "lbl36".tr,
                      starImage: ImageConstant.imgIconsaxLinearStar1,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildSixtySeven(
                      context,
                      widgetText: "lbl37".tr,
                      starImage: ImageConstant.imgIconsaxLinearShare,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildFiftyFive(
                      context,
                      widgetText: "lbl38".tr,
                      settingImage: ImageConstant.imgIconsaxLinearWarning2,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      indent: 24.h,
                      endIndent: 24.h,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 24.h,
                bottom: 58.v,
              ),
              child: _buildFiftyFive(
                context,
                widgetText: "lbl39".tr,
                settingImage: ImageConstant.imgIconsaxLinearMessagetext1,
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorPrimarycontainer,
              height: 122.v,
              width: 112.h,
              margin: EdgeInsets.only(bottom: 160.v),
            ),
            Container(
              height: 282.v,
              width: 303.h,
              margin: EdgeInsets.only(left: 12.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 140.v,
                      width: 19.h,
                      margin: EdgeInsets.only(left: 111.h),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimarycontainer138x66,
                    height: 138.v,
                    width: 66.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimarycontainer138x66,
                    height: 135.v,
                    width: 44.h,
                    alignment: Alignment.topLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimarycontainer242x79,
                    height: 242.v,
                    width: 79.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 22.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimarycontainer265x75,
                    height: 265.v,
                    width: 75.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimarycontainer177x34,
                    height: 177.v,
                    width: 34.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 17.v,
                      right: 72.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 51.h,
                        bottom: 40.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfile80x80,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            radius: BorderRadius.circular(
                              40.h,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Text(
                            "lbl32".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primaryContainer,
                              fontSize: 24.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "lbl_20_1018930499".tr,
                            style: TextStyle(
                              color: appTheme.blueGray300,
                              fontSize: 14.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 236.h,
                      margin: EdgeInsets.fromLTRB(44.h, 24.v, 23.h, 208.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 16.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              top: 21.v,
                              bottom: 11.v,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                            ),
                          ),
                          CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            padding: EdgeInsets.all(13.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                            ),
                          ),
                        ],
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

  /// Common widget
  Widget _buildFiftyFive(
    BuildContext context, {
    required String widgetText,
    required String settingImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeftBlueGray300,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 6.v,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            widgetText,
            style: TextStyle(
              color: theme.colorScheme.primaryContainer,
              fontSize: 16.fSize,
              fontFamily: 'DIN Next LT Arabic',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomImageView(
          imagePath: settingImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 16.h,
            bottom: 2.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSixtySeven(
    BuildContext context, {
    required String widgetText,
    required String starImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeftBlueGray300,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
        ),
        Spacer(),
        Text(
          widgetText,
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 16.fSize,
            fontFamily: 'DIN Next LT Arabic',
            fontWeight: FontWeight.w400,
          ),
        ),
        CustomImageView(
          imagePath: starImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 16.h),
        ),
      ],
    );
  }
}

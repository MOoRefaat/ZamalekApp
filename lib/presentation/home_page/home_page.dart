import '../home_page/widgets/item3_item_widget.dart';
import '../home_page/widgets/viewhierarchy_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/item3_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Column(children: [
                      _buildFrameFour(context),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildNinetySix(context,
                              titleText1: "lbl9".tr, titleText2: "lbl10".tr)),
                      SizedBox(height: 6.v),
                      _buildViewHierarchy(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildNinetySix(context,
                              titleText1: "lbl9".tr, titleText2: "lbl16".tr)),
                      SizedBox(height: 7.v),
                      _buildItem3(context),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildNinetySix(context,
                              titleText1: "lbl9".tr, titleText2: "lbl18".tr)),
                      SizedBox(height: 16.v),
                      _buildTitle3(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 84.v,
        centerTitle: true,
        title: SizedBox(
            height: 84.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgBlack900,
                  margin: EdgeInsets.only(bottom: 4.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgTelevision,
                  margin:
                      EdgeInsets.only(left: 175.h, top: 24.v, right: 175.h)),
              AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgProfile,
                  margin: EdgeInsets.fromLTRB(24.h, 25.v, 311.h, 1.v),
                  onTap: () {
                    onTapProfile(context);
                  })
            ])),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgFrame,
              margin: EdgeInsets.fromLTRB(24.h, 24.v, 24.h, 1.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameFour(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Container(
            height: 200.v,
            width: 345.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder24,
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgFrame4),
                    fit: BoxFit.cover)),
            child: Stack(alignment: Alignment.centerLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse45,
                  height: 200.v,
                  width: 167.h,
                  alignment: Alignment.centerRight),
              CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 194.v,
                  width: 112.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 8.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle10422,
                  height: 162.v,
                  width: 114.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 56.h)),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl7".tr,
                                      style: CustomTextStyles
                                          .headlineSmallOnPrimary_1),
                                  TextSpan(
                                      text: "lbl_vs".tr,
                                      style:
                                          CustomTextStyles.titleSmallOnPrimary)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 9.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text("lbl_10_2023".tr,
                                          style: TextStyle(
                                              color:
                                                  theme.colorScheme.onPrimary,
                                              fontSize: 14.fSize,
                                              fontFamily: 'DIN Next LT Arabic',
                                              fontWeight: FontWeight.w400))),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFrameOnprimary,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 4.h))
                                ]),
                            SizedBox(height: 7.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 4.v),
                                      child: Text("msg4".tr,
                                          style: TextStyle(
                                              color:
                                                  theme.colorScheme.onPrimary,
                                              fontSize: 14.fSize,
                                              fontFamily: 'DIN Next LT Arabic',
                                              fontWeight: FontWeight.w400))),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFrameOnprimary24x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 4.h))
                                ]),
                            SizedBox(height: 27.v),
                            CustomElevatedButton(
                                height: 32.v,
                                width: 108.h,
                                text: "lbl8".tr,
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 8.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIconsaxLinearArrowleft,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize)),
                                buttonStyle: CustomButtonStyles.fillOnPrimary)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 144.v,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                selector: (state) => state.homeModelObj,
                builder: (context, homeModelObj) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 8.h);
                      },
                      itemCount:
                          homeModelObj?.viewhierarchyItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ViewhierarchyItemModel model =
                            homeModelObj?.viewhierarchyItemList[index] ??
                                ViewhierarchyItemModel();
                        return ViewhierarchyItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildItem3(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 205.v,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                selector: (state) => state.homeModelObj,
                builder: (context, homeModelObj) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 8.h);
                      },
                      itemCount: homeModelObj?.item3ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Item3ItemModel model =
                            homeModelObj?.item3ItemList[index] ??
                                Item3ItemModel();
                        return Item3ItemWidget(model, onTapItem3: () {
                          onTapItem3(context);
                        });
                      });
                })));
  }

  /// Section Widget
  Widget _buildTitle3(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(children: [
          _buildTitle(context,
              image: ImageConstant.imgRectangle18511,
              title1: "msg9".tr,
              title2: "lbl_20_2023".tr),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildTitle(context,
                  image: ImageConstant.imgRectangle18511132x278,
                  title1: "msg_72".tr,
                  title2: "lbl_20_2023".tr))
        ])));
  }

  /// Common widget
  Widget _buildNinetySix(
    BuildContext context, {
    required String titleText1,
    required String titleText2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
          child: Text(titleText1,
              style: TextStyle(
                  color: appTheme.blueGray300,
                  fontSize: 14.fSize,
                  fontFamily: 'DIN Next LT Arabic',
                  fontWeight: FontWeight.w400))),
      Text(titleText2,
          style: TextStyle(
              color: theme.colorScheme.primaryContainer,
              fontSize: 18.fSize,
              fontFamily: 'DIN Next LT Arabic',
              fontWeight: FontWeight.w700))
    ]);
  }

  /// Common widget
  Widget _buildTitle(
    BuildContext context, {
    required String image,
    required String title1,
    required String title2,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.outlineBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: image,
                      height: 132.v,
                      width: 278.h,
                      radius: BorderRadius.circular(12.h)),
                  SizedBox(height: 16.v),
                  SizedBox(
                      width: 278.h,
                      child: Text(title1,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: theme.colorScheme.primaryContainer,
                              fontSize: 14.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w500))),
                  SizedBox(height: 16.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(title2,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: appTheme.blueGray300,
                              fontSize: 10.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w400)))
                ]))));
  }

  /// Navigates to the itemDetailsScreen when the action is triggered.
  onTapItem3(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.itemDetailsScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}

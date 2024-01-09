import '../matches_page/widgets/viewhierarchy1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohamed_s_application1/widgets/custom_icon_button.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          _buildSixtySix(context),
                          SizedBox(height: 10.v),
                          _buildViewHierarchy(context),
                          SizedBox(height: 15.v),
                          _buildPredictionButton1(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 109.v,
        leadingWidth: 82.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgProfile,
            margin: EdgeInsets.only(left: 24.h, top: 26.v, bottom: 25.v)),
        centerTitle: true,
        title: AppbarTitle(text: "المباريات"),
        actions: [
          Container(
              height: 58.260002.v,
              width: 50.h,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        alignment: Alignment.bottomCenter,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFrame))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 30.h, bottom: 38.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 36.h, right: 6.h, bottom: 37.v),
                        child: Text("4",
                            style: TextStyle(
                                color: theme.colorScheme.onPrimary,
                                fontSize: 14.fSize,
                                fontFamily: 'DIN Next LT Arabic',
                                fontWeight: FontWeight.w500))))
              ]))
        ],
        styleType: Style.bgStyle);
  }

  /// Section Widget
  Widget _buildSixtySix(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v, bottom: 5.v)),
          Text("مباريات قادمة",
              style: TextStyle(
                  color: theme.colorScheme.primaryContainer,
                  fontSize: 18.fSize,
                  fontFamily: 'DIN Next LT Arabic',
                  fontWeight: FontWeight.w700))
        ]);
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Viewhierarchy1ItemWidget(onTapViewHierarchy: () {
            onTapViewHierarchy(context);
          });
        });
  }

  /// Section Widget
  Widget _buildPredictionButton(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        width: 77.h,
        text: "توقع الأن",
        margin: EdgeInsets.only(right: 14.h),
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildPredictionButton1(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: appTheme.blueGray300.withOpacity(0.08), width: 1.h),
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Container(
            height: 169.v,
            width: 345.h,
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Stack(alignment: Alignment.topRight, children: [
              _buildThirtyOne(context, title: "الزمالك"),
              Padding(
                  padding: EdgeInsets.only(top: 40.v, right: 33.h),
                  child: _buildTitle(context, title: "بيراميدز")),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 12.v),
                      child: Text("الدوري المصري الممتاز",
                          style: TextStyle(
                              color: theme.colorScheme.primaryContainer,
                              fontSize: 12.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w500)))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 36.v),
                      child: Text("الأسبوع 10",
                          style: TextStyle(
                              color: appTheme.blueGray300,
                              fontSize: 10.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w400)))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 16.v),
                      child: Text("09:00 م",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: appTheme.blueGray300,
                              fontSize: 14.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w400)))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 42.v),
                      child: Text("21 سبتمبر 2023",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: appTheme.blueGray300,
                              fontSize: 12.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w400)))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 134.h),
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder20),
                      child: Text("توقع الأن",
                          style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontSize: 12.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w500)))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 169.v,
                                width: 225.h,
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 34.h,
                                                  vertical: 40.v),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup26),
                                                      fit: BoxFit.cover)),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTelevision,
                                                        height: 60.v,
                                                        width: 43.h),
                                                    SizedBox(height: 8.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.h),
                                                        child: Text("الزمالك",
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primaryContainer,
                                                                fontSize:
                                                                    12.fSize,
                                                                fontFamily:
                                                                    'DIN Next LT Arabic',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400))),
                                                    SizedBox(height: 13.v)
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 12.v),
                                              child: Text(
                                                  "الدوري المصري الممتاز",
                                                  style: TextStyle(
                                                      color: theme.colorScheme
                                                          .primaryContainer,
                                                      fontSize: 12.fSize,
                                                      fontFamily:
                                                          'DIN Next LT Arabic',
                                                      fontWeight:
                                                          FontWeight.w500)))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 36.v, right: 30.h),
                                              child: Text("الأسبوع 10",
                                                  style: TextStyle(
                                                      color:
                                                          appTheme.blueGray300,
                                                      fontSize: 10.fSize,
                                                      fontFamily:
                                                          'DIN Next LT Arabic',
                                                      fontWeight:
                                                          FontWeight.w400)))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 29.h, bottom: 16.v),
                                              child: Text("09:00 م",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color:
                                                          appTheme.blueGray300,
                                                      fontSize: 14.fSize,
                                                      fontFamily:
                                                          'DIN Next LT Arabic',
                                                      fontWeight:
                                                          FontWeight.w400)))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 14.h, bottom: 42.v),
                                              child: Text("21 سبتمبر 2023",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color:
                                                          appTheme.blueGray300,
                                                      fontSize: 12.fSize,
                                                      fontFamily:
                                                          'DIN Next LT Arabic',
                                                      fontWeight:
                                                          FontWeight.w400)))),
                                      _buildPredictionButton(context)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 27.h, top: 40.v, bottom: 53.v),
                                child: Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage51,
                                      height: 60.adaptSize,
                                      width: 60.adaptSize),
                                  SizedBox(height: 8.v),
                                  Text("الإسماعيلي",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          fontSize: 12.fSize,
                                          fontFamily: 'DIN Next LT Arabic',
                                          fontWeight: FontWeight.w400))
                                ]))
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildThirtyOne(
    BuildContext context, {
    required String title,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 40.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup26), fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 60.v,
                  width: 43.h),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(title,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: theme.colorScheme.primaryContainer,
                          fontSize: 12.fSize,
                          fontFamily: 'DIN Next LT Arabic',
                          fontWeight: FontWeight.w400))),
              SizedBox(height: 13.v)
            ]));
  }

  /// Common widget
  Widget _buildTitle(
    BuildContext context, {
    required String title,
  }) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgImage51,
          height: 60.adaptSize,
          width: 60.adaptSize),
      SizedBox(height: 8.v),
      Text(title,
          textAlign: TextAlign.right,
          style: TextStyle(
              color: theme.colorScheme.primaryContainer,
              fontSize: 12.fSize,
              fontFamily: 'DIN Next LT Arabic',
              fontWeight: FontWeight.w400))
    ]);
  }

  /// Navigates to the scoreScreen when the action is triggered.
  onTapViewHierarchy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scoreScreen);
  }
}

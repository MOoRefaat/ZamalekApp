import '../tickets_page/widgets/viewhierarchylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TicketsPage extends StatelessWidget {
  const TicketsPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildEightyRow(context),
              SizedBox(height: 18.v),
              _buildViewHierarchyList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: SizedBox(
        height: 72.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgTitle,
              margin: EdgeInsets.only(bottom: 8.v),
            ),
            AppbarTitle(
              text: "تذاكر المباريات",
              margin: EdgeInsets.fromLTRB(128.h, 27.v, 127.h, 8.v),
            ),
            AppbarTitleCircleimage(
              imagePath: ImageConstant.imgProfile,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 14.v,
                right: 311.h,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFrame,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 13.v,
            right: 24.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEightyRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCalendar,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            top: 1.v,
            bottom: 5.v,
          ),
        ),
        Text(
          "مباريات قادمة",
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 18.fSize,
            fontFamily: 'DIN Next LT Arabic',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ViewhierarchylistItemWidget();
        },
      ),
    );
  }
}

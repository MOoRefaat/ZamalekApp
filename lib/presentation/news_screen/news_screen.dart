import 'bloc/news_bloc.dart';
import 'models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (context) => NewsBloc(NewsState(
        newsModelObj: NewsModel(),
      ))
        ..add(NewsInitialEvent()),
      child: NewsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 11.v),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      Container(
                        width: 337.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "msg_72".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: theme.colorScheme.primaryContainer,
                            fontSize: 24.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_20_2023".tr,
                          style: TextStyle(
                            color: appTheme.blueGray300,
                            fontSize: 14.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildWidget(context),
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 345.h,
                        child: Text(
                          "msg14".tr,
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: theme.colorScheme.primaryContainer,
                            fontSize: 16.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle18511132x278,
        height: 180.v,
        width: 313.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}

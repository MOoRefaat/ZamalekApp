import '../news_one_page/widgets/newsarticlelist_item_widget.dart';
import '../news_one_page/widgets/userprofile_item_widget.dart';
import 'bloc/news_one_bloc.dart';
import 'models/news_one_model.dart';
import 'models/newsarticlelist_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_icon_button.dart';

class NewsOnePage extends StatelessWidget {
  const NewsOnePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NewsOneBloc>(
        create: (context) =>
            NewsOneBloc(NewsOneState(newsOneModelObj: NewsOneModel()))
              ..add(NewsOneInitialEvent()),
        child: NewsOnePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 15.v),
                  _buildUserProfileList(context),
                  SizedBox(height: 16.v),
                  _buildNewsArticleList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 120.v,
        leadingWidth: 82.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgProfile,
            margin: EdgeInsets.only(left: 24.h, top: 26.v, bottom: 26.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl19".tr),
        actions: [
          Container(
              height: 58.260002.v,
              width: 50.h,
              margin: EdgeInsets.fromLTRB(24.h, 25.v, 24.h, 26.v),
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
                        child: Text("lbl_42".tr,
                            style: TextStyle(
                                color: theme.colorScheme.onPrimary,
                                fontSize: 14.fSize,
                                fontFamily: 'DIN Next LT Arabic',
                                fontWeight: FontWeight.w500))))
              ]))
        ],
        styleType: Style.bgStyle_1);
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(right: 24.h),
              child: Text("lbl27".tr,
                  style: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontSize: 18.fSize,
                      fontFamily: 'DIN Next LT Arabic',
                      fontWeight: FontWeight.w700)))),
      SizedBox(height: 17.v),
      SizedBox(
          height: 234.v,
          child: BlocSelector<NewsOneBloc, NewsOneState, NewsOneModel?>(
              selector: (state) => state.newsOneModelObj,
              builder: (context, newsOneModelObj) {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8.h);
                    },
                    itemCount: newsOneModelObj?.userprofileItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      UserprofileItemModel model =
                          newsOneModelObj?.userprofileItemList[index] ??
                              UserprofileItemModel();
                      return UserprofileItemWidget(model, onTapUserProfile: () {
                        onTapUserProfile(context);
                      });
                    });
              }))
    ]);
  }

  /// Section Widget
  Widget _buildNewsArticleList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: BlocSelector<NewsOneBloc, NewsOneState, NewsOneModel?>(
            selector: (state) => state.newsOneModelObj,
            builder: (context, newsOneModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 8.v);
                  },
                  itemCount:
                      newsOneModelObj?.newsarticlelistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    NewsarticlelistItemModel model =
                        newsOneModelObj?.newsarticlelistItemList[index] ??
                            NewsarticlelistItemModel();
                    return NewsarticlelistItemWidget(model);
                  });
            }));
  }

  /// Navigates to the newsScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newsScreen,
    );
  }
}

import '../store_screen/widgets/itemgrid_item_widget.dart';
import 'bloc/store_bloc.dart';
import 'models/itemgrid_item_model.dart';
import 'models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/presentation/news_one_page/news_one_page.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_bottom_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_icon_button.dart';
import 'package:mohamed_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class StoreScreen extends StatelessWidget {
  StoreScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<StoreBloc>(
        create: (context) => StoreBloc(StoreState(storeModelObj: StoreModel()))
          ..add(StoreInitialEvent()),
        child: StoreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(children: [
                  SizedBox(height: 25.v),
                  BlocSelector<StoreBloc, StoreState, TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            controller: searchController, hintText: "msg11".tr);
                      }),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("lbl16".tr,
                          style: TextStyle(
                              color: theme.colorScheme.primaryContainer,
                              fontSize: 18.fSize,
                              fontFamily: 'DIN Next LT Arabic',
                              fontWeight: FontWeight.w700))),
                  SizedBox(height: 13.v),
                  _buildItemGrid(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 82.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgProfile,
            margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl28".tr),
        actions: [
          Container(
              height: 58.33.v,
              width: 50.h,
              margin: EdgeInsets.fromLTRB(24.h, 6.v, 24.h, 7.v),
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        alignment: Alignment.bottomCenter,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgLocation))),
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
                        child: Text("lbl_22".tr,
                            style: TextStyle(
                                color: theme.colorScheme.onPrimary,
                                fontSize: 14.fSize,
                                fontFamily: 'DIN Next LT Arabic',
                                fontWeight: FontWeight.w500))))
              ]))
        ],
        styleType: Style.bgStyle_2);
  }

  /// Section Widget
  Widget _buildItemGrid(BuildContext context) {
    return Expanded(
        child: BlocSelector<StoreBloc, StoreState, StoreModel?>(
            selector: (state) => state.storeModelObj,
            builder: (context, storeModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 206.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      crossAxisSpacing: 15.h),
                  physics: BouncingScrollPhysics(),
                  itemCount: storeModelObj?.itemgridItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ItemgridItemModel model =
                        storeModelObj?.itemgridItemList[index] ??
                            ItemgridItemModel();
                    return ItemgridItemWidget(model, onTapItem3: () {
                      onTapItem3(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.newsOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.newsOnePage:
        return NewsOnePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the itemDetailsScreen when the action is triggered.
  onTapItem3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.itemDetailsScreen,
    );
  }
}

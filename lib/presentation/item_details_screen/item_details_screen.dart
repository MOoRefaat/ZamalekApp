import '../item_details_screen/widgets/framethirtysix_item_widget.dart';
import '../item_details_screen/widgets/itemdetails_item_widget.dart';
import 'bloc/item_details_bloc.dart';
import 'models/framethirtysix_item_model.dart';
import 'models/item_details_model.dart';
import 'models/itemdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mohamed_s_application1/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:mohamed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ItemDetailsBloc>(
      create: (context) => ItemDetailsBloc(ItemDetailsState(
        itemDetailsModelObj: ItemDetailsModel(),
      ))
        ..add(ItemDetailsInitialEvent()),
      child: ItemDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 43.h),
                  decoration: AppDecoration.fillGray,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgDownload15R,
                        height: 240.v,
                        width: 177.h,
                      ),
                      SizedBox(height: 24.v),
                      _buildItemDetails(context),
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
                _buildAddToCart(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 73.v,
      leadingWidth: 74.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgLocation,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 8.v,
            right: 24.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItemDetails(BuildContext context) {
    return SizedBox(
      height: 58.v,
      child: BlocSelector<ItemDetailsBloc, ItemDetailsState, ItemDetailsModel?>(
        selector: (state) => state.itemDetailsModelObj,
        builder: (context, itemDetailsModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: itemDetailsModelObj?.itemdetailsItemList.length ?? 0,
            itemBuilder: (context, index) {
              ItemdetailsItemModel model =
                  itemDetailsModelObj?.itemdetailsItemList[index] ??
                      ItemdetailsItemModel();
              return ItemdetailsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "lbl29".tr,
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 16.fSize,
            fontFamily: 'DIN Next LT Arabic',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 9.v),
        BlocSelector<ItemDetailsBloc, ItemDetailsState, ItemDetailsModel?>(
          selector: (state) => state.itemDetailsModelObj,
          builder: (context, itemDetailsModelObj) {
            return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                itemDetailsModelObj?.framethirtysixItemList.length ?? 0,
                (index) {
                  FramethirtysixItemModel model =
                      itemDetailsModelObj?.framethirtysixItemList[index] ??
                          FramethirtysixItemModel();

                  return FramethirtysixItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<ItemDetailsBloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return SizedBox(
      height: 378.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 46.v,
                        ),
                        child: Text(
                          "lbl17".tr.toUpperCase(),
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 16.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          bottom: 41.v,
                        ),
                        child: Text(
                          "lbl_640".tr,
                          style: TextStyle(
                            color: theme.colorScheme.primaryContainer,
                            fontSize: 24.fSize,
                            fontFamily: 'DIN Next LT Arabic',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 200.h,
                        margin: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "msg8".tr,
                          maxLines: 2,
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
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(),
                  ),
                  SizedBox(height: 16.v),
                  _buildWidget(context),
                  SizedBox(height: 24.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(),
                  ),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Text(
                        "lbl30".tr,
                        style: TextStyle(
                          color: theme.colorScheme.primaryContainer,
                          fontSize: 16.fSize,
                          fontFamily: 'DIN Next LT Arabic',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 336.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "msg15".tr,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: appTheme.blueGray300,
                        fontSize: 14.fSize,
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
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 38.v),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                    text: "lbl31".tr,
                    buttonStyle: CustomButtonStyles.fillPrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

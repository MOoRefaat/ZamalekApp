import '../score_screen/widgets/four_item_widget.dart';
import 'bloc/score_bloc.dart';
import 'models/four_item_model.dart';
import 'models/score_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/widgets/custom_checkbox_button.dart';
import 'package:mohamed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohamed_s_application1/widgets/custom_outlined_button.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ScoreBloc>(
      create: (context) => ScoreBloc(ScoreState(
        scoreModelObj: ScoreModel(),
      ))
        ..add(ScoreInitialEvent()),
      child: ScoreScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTelevisionSection(context),
              SizedBox(height: 20.v),
              Opacity(
                opacity: 0.05,
                child: Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 24.h,
                    endIndent: 24.h,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildChipViewSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSavePredictionButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevisionSection(BuildContext context) {
    return SizedBox(
      height: 224.v,
      width: 369.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 58.v,
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
                      "lbl11".tr,
                      style: TextStyle(
                        color: theme.colorScheme.primaryContainer,
                        fontSize: 12.fSize,
                        fontFamily: 'DIN Next LT Arabic',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 58.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage51,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl15".tr,
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
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 33.v,
                right: 116.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Opacity(
                        opacity: 0.1,
                        child: Text(
                          "lbl_22".tr,
                          style: TextStyle(
                            color: theme.colorScheme.primary.withOpacity(0.39),
                            fontSize: 32.fSize,
                            fontFamily: 'Clash Grotesk',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      CustomOutlinedButton(
                        width: 48.h,
                        text: "lbl_32".tr,
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Text(
                          "lbl_42".tr,
                          style: TextStyle(
                            color: theme.colorScheme.primary.withOpacity(0.39),
                            fontSize: 32.fSize,
                            fontFamily: 'Clash Grotesk',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      children: [
                        Opacity(
                          opacity: 0.1,
                          child: Text(
                            "lbl_1".tr,
                            style: TextStyle(
                              color:
                                  theme.colorScheme.primary.withOpacity(0.39),
                              fontSize: 32.fSize,
                              fontFamily: 'Clash Grotesk',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        CustomOutlinedButton(
                          width: 48.h,
                          text: "lbl_22".tr,
                        ),
                        Opacity(
                          opacity: 0.1,
                          child: Text(
                            "lbl_32".tr,
                            style: TextStyle(
                              color:
                                  theme.colorScheme.primary.withOpacity(0.39),
                              fontSize: 32.fSize,
                              fontFamily: 'Clash Grotesk',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 3.v,
              width: 40.h,
              margin: EdgeInsets.only(
                top: 8.v,
                right: 152.h,
              ),
              decoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: BlocSelector<ScoreBloc, ScoreState, bool?>(
              selector: (state) => state.rectangle,
              builder: (context, rectangle) {
                return CustomCheckboxButton(
                  alignment: Alignment.bottomRight,
                  width: 200.h,
                  text: "msg16".tr,
                  value: rectangle,
                  textStyle: TextStyle(
                    color: appTheme.blueGray300,
                    fontSize: 16.fSize,
                    fontFamily: 'DIN Next LT Arabic',
                    fontWeight: FontWeight.w400,
                  ),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<ScoreBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  },
                );
              },
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50.v),
                child: SizedBox(
                  width: 345.h,
                  child: Divider(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChipViewSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.h),
      padding: EdgeInsets.symmetric(horizontal: 33.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 85.h),
            child: Text(
              "lbl40".tr,
              style: TextStyle(
                color: theme.colorScheme.primaryContainer,
                fontSize: 18.fSize,
                fontFamily: 'DIN Next LT Arabic',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          BlocSelector<ScoreBloc, ScoreState, ScoreModel?>(
            selector: (state) => state.scoreModelObj,
            builder: (context, scoreModelObj) {
              return Wrap(
                runSpacing: 24.v,
                spacing: 24.h,
                children: List<Widget>.generate(
                  scoreModelObj?.fourItemList.length ?? 0,
                  (index) {
                    FourItemModel model =
                        scoreModelObj?.fourItemList[index] ?? FourItemModel();

                    return FourItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<ScoreBloc>().add(UpdateChipViewEvent(
                            index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSavePredictionButtonSection(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl41".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 50.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}

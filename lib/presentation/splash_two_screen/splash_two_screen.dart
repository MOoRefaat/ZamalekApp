import 'bloc/splash_two_bloc.dart';
import 'models/splash_two_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashTwoBloc>(
      create: (context) => SplashTwoBloc(SplashTwoState(
        splashTwoModelObj: SplashTwoModel(),
      ))
        ..add(SplashTwoInitialEvent()),
      child: SplashTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashTwoBloc, SplashTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 808.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 808.v,
                          width: 60.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onError,
                          ),
                        ),
                        Container(
                          height: 808.v,
                          width: 60.h,
                          margin: EdgeInsets.only(left: 16.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onError,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLogo,
                    height: 300.v,
                    width: 218.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 232.v),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

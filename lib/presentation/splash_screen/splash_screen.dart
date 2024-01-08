import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
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

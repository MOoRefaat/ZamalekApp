import 'bloc/news_one_container_bloc.dart';
import 'models/news_one_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';
import 'package:mohamed_s_application1/presentation/news_one_page/news_one_page.dart';
import 'package:mohamed_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class NewsOneContainerScreen extends StatelessWidget {
  NewsOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NewsOneContainerBloc>(
        create: (context) => NewsOneContainerBloc(NewsOneContainerState(
            newsOneContainerModelObj: NewsOneContainerModel()))
          ..add(NewsOneContainerInitialEvent()),
        child: NewsOneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsOneContainerBloc, NewsOneContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.newsOnePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
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
}

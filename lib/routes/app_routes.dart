import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:mohamed_s_application1/presentation/login_screen/login_screen.dart';
import 'package:mohamed_s_application1/presentation/news_one_container_screen/news_one_container_screen.dart';
import 'package:mohamed_s_application1/presentation/store_screen/store_screen.dart';
import 'package:mohamed_s_application1/presentation/news_screen/news_screen.dart';
import 'package:mohamed_s_application1/presentation/item_details_screen/item_details_screen.dart';
import 'package:mohamed_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:mohamed_s_application1/presentation/score_screen/score_screen.dart';
import 'package:mohamed_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String matchesPage = '/matches_page';

  static const String ticketsPage = '/tickets_page';

  static const String newsOnePage = '/news_one_page';

  static const String newsOneContainerScreen = '/news_one_container_screen';

  static const String storeScreen = '/store_screen';

  static const String newsScreen = '/news_screen';

  static const String itemDetailsScreen = '/item_details_screen';

  static const String profileScreen = '/profile_screen';

  static const String scoreScreen = '/score_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        newsOneContainerScreen: NewsOneContainerScreen.builder,
        storeScreen: StoreScreen.builder,
        newsScreen: NewsScreen.builder,
        itemDetailsScreen: ItemDetailsScreen.builder,
        profileScreen: ProfileScreen.builder,
        scoreScreen: ScoreScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}

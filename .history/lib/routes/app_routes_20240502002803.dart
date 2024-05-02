import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/main_profile_two_screen/main_profile_two_screen.dart';
import '../presentation/no_cards_screen/no_cards_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String mainProfileOnePage = '/main_profile_one_page';

  static const String mainProfileTwoScreen = '/main_profile_two_screen';

  static const String mainProfileThreeScreen = '/main_profile_three_screen';

  static const String noCardsScreen = '/no_cards_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    mainProfileTwoScreen: (context) => MainProfileTwoScreen(),
    noCardsScreen: (context) => NoCardsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => MainProfileTwoScreen()
  };
}

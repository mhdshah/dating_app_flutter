import 'package:flutter/material.dart';
import '../presentation/main_profile_two_screen/main_profile_screen.dart';

class AppRoutes {
  static const String mainProfileScreen = '/main_profile_page';

  static const String noCardsScreen = '/no_cards_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    mainProfileScreen: (context) => MainProfileScreen(),
    initialRoute: (context) => MainProfileScreen()
  };
}

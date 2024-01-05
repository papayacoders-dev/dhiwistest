import 'package:flutter/material.dart';
import 'package:papaya_s_application/presentation/get_started_screen/get_started_screen.dart';
import 'package:papaya_s_application/presentation/menu_screen/menu_screen.dart';
import 'package:papaya_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String menuScreen = '/menu_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        getStartedScreen: GetStartedScreen.builder,
        menuScreen: MenuScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: GetStartedScreen.builder
      };
}

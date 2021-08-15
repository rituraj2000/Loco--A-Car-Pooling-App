import 'package:flutter/material.dart';
import 'package:go_pool/screens/home/home/home.dart';
import 'package:go_pool/screens/home/navigationHome.dart';

class PageRoutes {
  static const String homePage = 'home_page';
  static const String navigation = 'navigation_home';

  Map<String, WidgetBuilder> routes() {
    return {
      homePage: (context) => Home(),
      navigation: (context) => NavigationHome(),
    };
  }
}

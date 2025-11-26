import 'package:epam_tech_interview/routes_pages/routes.dart';
import 'package:flutter/material.dart';

class AppRouteNav1_0 {
  static const String home = '/';
  static const String profile = '/secondPage';

  static final Map<String, WidgetBuilder> generateRoutes = {
    home: (context) => const HomePage(),
    profile: (context) => const SecondPage(),
  };
}

class AppRouteNav2_0 {
  static const String home = '/home';
  static const String profile = '/secondPage';
}

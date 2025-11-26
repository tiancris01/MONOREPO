import 'package:epam_tech_interview/navigation/app_route/app_route.dart';
import 'package:flutter/material.dart';

class AppRouteState extends ChangeNotifier {
  String _currentRoute = AppRouteNav2_0.home;

  String get currentRoute => _currentRoute;

  void goTo(String route) {
    _currentRoute = route;
    notifyListeners();
  }
}

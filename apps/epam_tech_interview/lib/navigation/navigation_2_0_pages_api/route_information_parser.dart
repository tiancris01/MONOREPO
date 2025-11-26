import 'package:epam_tech_interview/navigation/navigation_2_0_pages_api/change_notifier_state_managment/app_route_state.dart';
import 'package:flutter/material.dart';

import '../app_route/app_route.dart';

class MyRouteInformationParser extends RouteInformationParser<AppRouteState> {
  @override
  Future<AppRouteState> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final appRouteState = AppRouteState();
    final path = routeInformation.uri.path;
    appRouteState.goTo(path.isEmpty ? AppRouteNav2_0.home : path);
    return appRouteState;
  }

  @override
  RouteInformation restoreRouteInformation(AppRouteState configuration) {
    return RouteInformation(uri: Uri.parse(configuration.currentRoute));
  }
}

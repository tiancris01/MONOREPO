import 'package:epam_tech_interview/navigation/navigation_2_0_pages_api/change_notifier_state_managment/app_route_state.dart';
import 'package:flutter/material.dart';

import '../../routes_pages/routes.dart';

class AppRoterDelegate extends RouterDelegate<AppRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouteState> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final AppRouteState _appRouteState = AppRouteState();

  // Expose app state for navigation
  AppRouteState get appRouteState => _appRouteState;

  @override
  AppRouteState get currentConfiguration => _appRouteState;

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  AppRoterDelegate() {
    _appRouteState.addListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: _buildPages(),
      onDidRemovePage: _removePages,
    );
  }

  List<Page> _buildPages() {
    List<Page> pages = [];

    // Always add home page as the base
    pages.add(
      MaterialPage(
        key: const ValueKey('/home'),
        child: HomePage(onNavigate: _appRouteState.goTo),
      ),
    );

    // Add additional pages based on current route
    if (_appRouteState.currentRoute == '/secondPage') {
      pages.add(
        MaterialPage(
          key: const ValueKey('/secondPage'),
          child: const SecondPage(),
        ),
      );
    }

    return pages;
  }

  void _removePages(Page<Object?> page) {
    if (page.name != null && page.name != _appRouteState.currentRoute) {
      _appRouteState.goTo(page.name!);
    }
  }

  @override
  Future<void> setNewRoutePath(AppRouteState configuration) async {
    _appRouteState.goTo(configuration.currentRoute);
  }

  @override
  void dispose() {
    _appRouteState.removeListener(notifyListeners);
    _appRouteState.dispose();
    super.dispose();
  }
}

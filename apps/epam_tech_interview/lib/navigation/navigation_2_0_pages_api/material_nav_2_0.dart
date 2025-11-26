import 'package:epam_tech_interview/navigation/navigation_2_0_pages_api/app_roter_delegate.dart';
import 'package:epam_tech_interview/navigation/navigation_2_0_pages_api/route_information_parser.dart';
import 'package:flutter/material.dart';

class MyAppNavigation20 extends StatelessWidget {
  const MyAppNavigation20({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerDelegate: AppRoterDelegate(),
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}


///The [Navigator] is only built if routes are provided
/// (either via [home], [routes], [onGenerateRoute], or 
/// [onUnknownRoute]) if they are not, [builder] 
/// must not be null.

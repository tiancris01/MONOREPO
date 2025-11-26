import 'package:epam_tech_interview/navigation/app_route/app_route.dart';
import 'package:flutter/material.dart';

class MaterialNav_1_0 extends StatelessWidget {
  const MaterialNav_1_0({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation 1.0 Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRouteNav1_0.home,
      routes: AppRouteNav1_0.generateRoutes,
    );
  }
}

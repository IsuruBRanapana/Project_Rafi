import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Rafi',
      onGenerateRoute: Routes.generateRoute,
      initialRoute: Routes.SPLASH_PAGE,
      theme: ThemeData(
          primaryColor: Colors.blue.shade800,
          accentColor: Colors.blue.shade600,
          fontFamily: AppConstants.fontFamily,
          highlightColor: AppColors.primaryTextColor,
          unselectedWidgetColor: Colors.white),
    );
  }
}
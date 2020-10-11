import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';

class ProjectRafi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epic Sure Assessor',
      onGenerateRoute: Routes.generateRoute,
      initialRoute: Routes.SPLASH_PAGE,
      theme: ThemeData(
          primaryColor: AppColors.primaryBackgroundColor,
          accentColor: Color(0xff7e57c2),
          fontFamily: AppConstants.fontFamily,
          highlightColor: AppColors.primaryTextColor,
          unselectedWidgetColor: Colors.white),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/features/presentation/pages/login/login_view.dart';
import 'package:project_rafi/features/presentation/pages/splash/splash_view.dart';

class Routes{
  static const String SPLASH_PAGE = "splash_view";
  static const String LOGIN_PAGE = "login_view";

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.SPLASH_PAGE:
        return MaterialPageRoute(
          builder: (_)=>SplashView(),
          settings: RouteSettings(name: Routes.SPLASH_PAGE),
        );
      case Routes.LOGIN_PAGE:
        return MaterialPageRoute(builder: (_)=>LoginView(),
          settings: RouteSettings(name: Routes.LOGIN_PAGE),
        );
      default:
        return MaterialPageRoute(
          builder: (_)=>Scaffold(
            body: Center(
              child: Text("Invalid Route"),
            ),
          )
        );
    }
  }
}
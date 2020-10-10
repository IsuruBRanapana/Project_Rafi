import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/features/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:project_rafi/features/presentation/pages/home/home_view.dart';
import 'package:project_rafi/features/presentation/pages/login/login_view.dart';
import 'package:project_rafi/features/presentation/pages/sign_up/sign_up_view.dart';
import 'package:project_rafi/features/presentation/pages/splash/splash_view.dart';

class Routes{
  static const String SPLASH_PAGE = "splash_view";
  static const String LOGIN_PAGE = "login_view";
  static const String FORGOT_PASSWORD_RESET_PAGE = "forgot_password_reset_page";
  static const String SIGN_UP_PAGE='sign_up_view';
  static const String HOME_PAGE='home_view';

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
        case Routes.FORGOT_PASSWORD_RESET_PAGE:
      return MaterialPageRoute(
        builder: (_) => ForgotPasswordCheckUserView(),
        settings: RouteSettings(name: Routes.FORGOT_PASSWORD_RESET_PAGE),
      );
      case Routes.SIGN_UP_PAGE:
        return MaterialPageRoute(builder: (_)=>SignUpView(),
          settings: RouteSettings(name: Routes.SIGN_UP_PAGE),
        );
      case Routes.HOME_PAGE:
        return MaterialPageRoute(builder: (_)=>HomeView(),
          settings: RouteSettings(name: Routes.HOME_PAGE),
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
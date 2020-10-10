import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/features/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:project_rafi/features/presentation/pages/home/home_view.dart';
import 'package:project_rafi/features/presentation/pages/injuries/acute_injury/acute_injury.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/baseball_injury.dart';
import 'package:project_rafi/features/presentation/pages/injuries/overuse_injury/overuse_view.dart';
import 'package:project_rafi/features/presentation/pages/injury_type/injury_type_view.dart';
import 'package:project_rafi/features/presentation/pages/login/login_view.dart';
import 'package:project_rafi/features/presentation/pages/sign_up/sign_up_view.dart';
import 'package:project_rafi/features/presentation/pages/splash/splash_view.dart';

class Routes{
  static const String SPLASH_PAGE = "splash_view";
  static const String LOGIN_PAGE = "login_view";
  static const String FORGOT_PASSWORD_RESET_PAGE = "forgot_password_reset_page";
  static const String SIGN_UP_PAGE='sign_up_view';
  static const String HOME_PAGE='home_view';
  static const String INJURY_TYPE='injury_type_view';
  static const String ACUTE_INJURY='acute_injury';
  static const String OVER_USE_INJURY='overuse_view';
  static const String BASEBALL_INJURY='baseball_injury';
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
      case Routes.INJURY_TYPE:
        return MaterialPageRoute(builder: (_)=>InjuryTypeView(),
          settings: RouteSettings(name: Routes.INJURY_TYPE),
        );
      case Routes.ACUTE_INJURY:
        return MaterialPageRoute(builder: (_)=>AcuteInjuryView(),
          settings: RouteSettings(name: Routes.ACUTE_INJURY),
        );
      case Routes.OVER_USE_INJURY:
        return MaterialPageRoute(builder: (_)=>OverUseView(),
          settings: RouteSettings(name: Routes.OVER_USE_INJURY),
        );
      case Routes.BASEBALL_INJURY:
        return MaterialPageRoute(builder: (_)=>BaseballInjuryView(),
          settings: RouteSettings(name: Routes.BASEBALL_INJURY),
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
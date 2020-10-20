import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/features/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:project_rafi/features/presentation/pages/home/home_view.dart';
import 'package:project_rafi/features/presentation/pages/injuries/acute_injury/acute_injury.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/ankle_view.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/baseball_injury.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/knee_view.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/lower_back_pain.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/neck_view.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/shoulder_view.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/Bone.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/ankle.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/joint.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/knee.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/ligament.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/lowerBackPain.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/muscle.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/neck.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/shoulder.dart';
import 'package:project_rafi/features/presentation/pages/injuries/overuse_injury/overuse_view.dart';
import 'package:project_rafi/features/presentation/pages/injury_type/injury_type_view.dart';
import 'package:project_rafi/features/presentation/pages/location/location.dart';
import 'package:project_rafi/features/presentation/pages/location/location_map.dart';
import 'package:project_rafi/features/presentation/pages/login/login_view.dart';
import 'package:project_rafi/features/presentation/pages/profile/edit_profile.dart';
import 'package:project_rafi/features/presentation/pages/profile/profile_page.dart';
import 'package:project_rafi/features/presentation/pages/sign_up/sign_up_view.dart';
import 'package:project_rafi/features/presentation/pages/splash/splash_view.dart';
import 'package:project_rafi/features/presentation/pages/therapist/component/view.dart';

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
  static const String KNEE_VIEW='knee_view';
  static const String SHOULDER_VIEW='shoulder_view';
  static const String LOWER_BACK_PAIN='lower_back_pain';
  static const String ANKLE_VIEW='ankle_view';
  static const String NECK_VIEW='neck_view';
  static const String ANKLE='ankle';
  static const String BONE='Bone';
  static const String JOINT='joint';
  static const String KNEE='knee';
  static const String LIGAMENT='ligament';
  static const String LOWERBACKPAIN='lower_back_pain';
  static const String MUSCLE='muscle';
  static const String NECK='neck';
  static const String SHOULDER='shoulder';
  //static const String KNEE='knee';
  static const String THERO='view';
  static const String LOCATION='location';
  static const String EDIT_PROFILE='edit_profile';
  static const String PROFILE='profile_page';
  static const String LOCATIONVIEW='location_map';

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
        return MaterialPageRoute(builder: (_)=>HomeView(userName: settings.arguments,),
          settings: RouteSettings(name: Routes.HOME_PAGE),
        );
      case Routes.INJURY_TYPE:
        return MaterialPageRoute(builder: (_)=>InjuryTypeView(),
          settings: RouteSettings(name: Routes.INJURY_TYPE),
        );
      case Routes.LOCATIONVIEW:
        return MaterialPageRoute(builder: (_)=>LocationView(),
          settings: RouteSettings(name: Routes.LOCATIONVIEW),
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
      // case Routes.KNEE_VIEW:
      //   return MaterialPageRoute(builder: (_)=>KneeView(),
      //     settings: RouteSettings(name: Routes.KNEE_VIEW),
      //   );
      // case Routes.ANKLE_VIEW:
      //   return MaterialPageRoute(builder: (_)=>AnkleView(),
      //     settings: RouteSettings(name: Routes.ANKLE_VIEW),
      //   );
      // case Routes.LOWER_BACK_PAIN:
      //   return MaterialPageRoute(builder: (_)=>LowerBackPain(),
      //     settings: RouteSettings(name: Routes.LOWER_BACK_PAIN),
      //   );
      case Routes.LOCATION:
        return MaterialPageRoute(builder: (_)=>Location(),
          settings: RouteSettings(name: Routes.ANKLE),
        );
      case Routes.EDIT_PROFILE:
        return MaterialPageRoute(builder: (_)=>EditProfile(args: settings.arguments,),
            settings: RouteSettings(name: Routes.EDIT_PROFILE));
      case Routes.PROFILE:
        return MaterialPageRoute(builder: (_)=>ProfileDetailView(response: settings.arguments,),
            settings: RouteSettings(name: Routes.PROFILE));
      case Routes.ANKLE:
        return MaterialPageRoute(builder: (_)=>AnkleView(),
          settings: RouteSettings(name: Routes.ANKLE),
        );
      case Routes.KNEE:
        return MaterialPageRoute(builder: (_)=>KneeView(),
          settings: RouteSettings(name: Routes.ANKLE),
        );
      case Routes.BONE:
        return MaterialPageRoute(builder: (_)=>BoneView(),
          settings: RouteSettings(name: Routes.BONE),
        );
      case Routes.JOINT:
        return MaterialPageRoute(builder: (_)=>JointView(),
          settings: RouteSettings(name: Routes.JOINT),
        );
      case Routes.LIGAMENT:
        return MaterialPageRoute(builder: (_)=>LigamentView(),
          settings: RouteSettings(name: Routes.LIGAMENT),
        );
      case Routes.LOWERBACKPAIN:
        return MaterialPageRoute(builder: (_)=>LowerBackPainView(),
          settings: RouteSettings(name: Routes.LOWERBACKPAIN),
        );
      case Routes.MUSCLE:
        return MaterialPageRoute(builder: (_)=>MuscleView(),
          settings: RouteSettings(name: Routes.MUSCLE),
        );
      case Routes.NECK:
        return MaterialPageRoute(builder: (_)=>NeckView(),
          settings: RouteSettings(name: Routes.NECK),
        );
      case Routes.SHOULDER:
        return MaterialPageRoute(builder: (_)=>ShoulderView(),
          settings: RouteSettings(name: Routes.SHOULDER),
        );

      case Routes.THERO:
        return MaterialPageRoute(builder: (_)=>TheroView(response: settings.arguments,),
          settings: RouteSettings(name: Routes.THERO),
        );


      //
      // case Routes.SHOULDER_VIEW:
      //   return MaterialPageRoute(builder: (_)=>ShoulderView(),
      //     settings: RouteSettings(name: Routes.SHOULDER_VIEW),

        // );
      // case Routes.NECK_VIEW:
      //   return MaterialPageRoute(builder: (_)=>NeckView(),
      //     settings: RouteSettings(name: Routes.NECK_VIEW),
      //   );
      // default:
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
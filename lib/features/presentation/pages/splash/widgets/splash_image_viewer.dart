import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/presentation/pages/splash/widgets/Painter.dart';

class SplashImageViewer extends StatefulWidget {
  @override
  _SplashImageViewerState createState() => _SplashImageViewerState();
}

class _SplashImageViewerState extends State<SplashImageViewer> {
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      child: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: AppConstants.adaptiveScreen.setHeight(100),
              ),
              Center(
                child: TyperAnimatedTextKit(
                  speed: Duration(milliseconds: 100),
                  onFinished: () {
                    setState(() {
                      _opacity = 1.0;
                    });
                  },
                  text: ['Baseball Help'],
                  isRepeatingAnimation: false,
                  textStyle: TextStyle(
                      fontSize: AppConstants.adaptiveScreen.setSp(80),
                      color: AppColors.primaryBackgroundColor),
                ),
              ),
              SizedBox(
                height: AppConstants.adaptiveScreen.setHeight(150),
              ),
              Container(
                height: AppConstants.adaptiveScreen.setHeight(400),
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 3),
                  child: Image.asset(AppImages.splashMan),
                  curve: Curves.slowMiddle,
                  onEnd: () {
                    Navigator.pushReplacementNamed(context, Routes.LOGIN_PAGE);
                  },
                ),
              ),
            ],
          ),
          // Positioned(
          //   child: Center(
          //       child: Opacity(
          //         opacity: 0.8,
          //         child: Text("@ Powered By Isuru B. Ranapana",
          //             style: TextStyle(
          //                 color: AppColors.primaryTextColor,
          //                 fontSize: AppConstants.adaptiveScreen.setSp(25))),
          //       )),
          //   bottom: 0,
          //   right: 0,
          // )
        ],
      ),
    );
  }
}

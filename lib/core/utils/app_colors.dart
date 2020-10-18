import 'package:flutter/material.dart';

class AppColors {
  //TODO: add colors
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color primaryBackgroundColor = Color(0xff3949ab);
  static const Color orangeColor = Color(0xffec407a);
  static const Color peanutBrownColor = Color(0xFF795C24);
  static const Color blackColor = Color(0xFF000000);
  static const LinearGradient gradientBackground = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [AppColors.primaryBackgroundColor, AppColors.orangeColor]);
}

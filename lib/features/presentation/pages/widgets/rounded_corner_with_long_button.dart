import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class RoundedCornerGradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const RoundedCornerGradientButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        width: AppConstants.adaptiveScreen.setWidth(500),
        height: AppConstants.adaptiveScreen.setHeight(70),
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(27), gradient: AppColors.gradientBackground, boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(80),
            offset: Offset(3, 3),
            blurRadius: 2.0,
          )
        ]),
        child: Text(
          text,
          style: TextStyle(color: AppColors.primaryTextColor, fontWeight: FontWeight.bold, fontSize: ScreenUtil().setSp(30)),
        ),
      ),
    );
  }
}

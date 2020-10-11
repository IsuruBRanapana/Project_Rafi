import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class RoundedCornerWhiteButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const RoundedCornerWhiteButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        width: AppConstants.adaptiveScreen.setWidth(273),
        height: AppConstants.adaptiveScreen.setHeight(70),
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(27), color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(80),
            offset: Offset(3, 3),
            blurRadius: 2.0,
          )
        ]),
        child: Text(
          text,
          style: TextStyle(color: AppColors.primaryBackgroundColor, fontWeight: FontWeight.bold, fontSize: ScreenUtil().setSp(30)),
        ),
      ),
    );
  }
}

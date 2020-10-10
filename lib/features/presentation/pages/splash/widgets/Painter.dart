import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height =  size.height;
    final width = size.width;
    Paint paint= Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = AppColors.whiteColor;
    canvas.drawPath(mainBackground, paint);

    // Path treeFirst =  Path();
    // treeFirst.addRect(Rect.fromLTRB(0.475*width, 0.5*height, 0.525*width, height));
    // paint.color = AppColors.blackColor;
    // canvas.drawPath(treeFirst, paint);
    //
    // Path firstTreePart = Path();
    // firstTreePart.moveTo(0.475*width, 0.5*height);
    // firstTreePart.quadraticBezierTo(1.5/4*width, height*1/4, 0.5/4*width, 0.8/2*height);
    // firstTreePart.quadraticBezierTo(1.5/4*width, height*0.8/4, 0.5*width, 1/2*height);
    // paint.color=AppColors.pecanBrownColor;
    // canvas.drawPath(firstTreePart, paint);

    Path firstOval = Path();
    firstOval.moveTo(0, height);
    firstOval.lineTo(0, height*2.8/4);
    firstOval.quadraticBezierTo(0.6*width, height*3/4, 3/4*width, height);
    paint.color=AppColors.primaryTextColor;
    canvas.drawPath(firstOval, paint);

    Path secondOval =Path();
    secondOval.moveTo(1/4*width, height);
    secondOval.quadraticBezierTo(0.4*width, 3 /4*height, width,2.8/4*height);
    secondOval.lineTo(width, height);
    paint.color=AppColors.primaryTextColor;
    canvas.drawPath(secondOval, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

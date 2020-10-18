import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class ImageWithWhiteBackground extends StatelessWidget {
  final String imgPath;
  final String title;
  final String description;

  ImageWithWhiteBackground({@required this.imgPath,@required this.title,@required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
        const EdgeInsets.only(left: 12.0, right: 12, top: 15, bottom: 15),
        child: Column(
          children: [
            Container(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppConstants.adaptiveScreen.setSp(35),
                ),
              ),
            ),
            SizedBox(height: AppConstants.adaptiveScreen.setHeight(25),),
            Container(
              child: Center(
                child: Image.asset(
                  imgPath,
                  width: AppConstants.adaptiveScreen.setWidth(350),
                  height: AppConstants.adaptiveScreen.setWidth(350),
                ),
              ),
            ),
            SizedBox(height: AppConstants.adaptiveScreen.setHeight(25),),
            Container(
              child: Text(
                description,
                style: TextStyle(
                    fontSize: AppConstants.adaptiveScreen.setSp(28)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

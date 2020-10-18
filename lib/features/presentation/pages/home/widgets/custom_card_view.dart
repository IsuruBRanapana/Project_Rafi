import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class CustomCardView extends StatefulWidget {
  final Function onPressed;
  final String cardTitle;
  final String img;

  const CustomCardView({Key key, this.onPressed, this.cardTitle, this.img}) : super(key: key);
  @override
  _CustomCardViewState createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            splashColor: AppColors.primaryBackgroundColor,
            onTap: widget.onPressed,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: AppConstants.adaptiveScreen.setWidth(250),
              height: AppConstants.adaptiveScreen.setWidth(250),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      widget.cardTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppConstants.adaptiveScreen.setSp(26),
                          color: AppColors.primaryBackgroundColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: AppConstants.adaptiveScreen.setWidth(20),
                    ),
                    Image.asset(widget.img,width:AppConstants.adaptiveScreen.setWidth(100) ,
                    height: AppConstants.adaptiveScreen.setWidth(100),)
                  ],
                ),
              ),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class InjuryTypeCard extends StatefulWidget {
  final Function onPressed;
  final String cardTitle;
  final String img;

  const InjuryTypeCard({Key key, this.onPressed, this.cardTitle, this.img}) : super(key: key);
  @override
  _InjuryTypeCardState createState() => _InjuryTypeCardState();
}

class _InjuryTypeCardState extends State<InjuryTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10.0,
        child: InkWell(
            splashColor: AppColors.primaryBackgroundColor,
            onTap: widget.onPressed,
            child: Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: AppConstants.adaptiveScreen.setWidth(550),
              height: AppConstants.adaptiveScreen.setWidth(300),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),
                      color: AppColors.primaryBackgroundColor
                    ),
                    width: AppConstants.adaptiveScreen.setWidth(550),
                    height: AppConstants.adaptiveScreen.setWidth(80),
                    child: Center(
                      child: Text(
                        widget.cardTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: AppConstants.adaptiveScreen.setSp(34),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
                  Image.asset(widget.img,width:AppConstants.adaptiveScreen.setWidth(150) ,
                    height: AppConstants.adaptiveScreen.setWidth(150),)
                ],
              ),
            )));
  }
}
//todo:add necessary images for types injury
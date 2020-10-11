import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class BaseBallCardView extends StatefulWidget {
  final Function onPressed;
  final String cardTitle;

  const BaseBallCardView({Key key, this.onPressed, this.cardTitle}) : super(key: key);
  @override
  _BaseBallCardViewState createState() => _BaseBallCardViewState();
}

class _BaseBallCardViewState extends State<BaseBallCardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
        child: InkWell(
            splashColor: AppColors.primaryBackgroundColor,
            onTap: widget.onPressed,
            child: Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: AppConstants.adaptiveScreen.setWidth(300),
              height: AppConstants.adaptiveScreen.setWidth(300),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        widget.cardTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: AppConstants.adaptiveScreen.setSp(34),
                            color: AppColors.primaryBackgroundColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),


                  ],
                ),
              ),
            )));
  }
}

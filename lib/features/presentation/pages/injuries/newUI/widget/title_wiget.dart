import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class InjuryTitle extends StatelessWidget {
  final String title;

  InjuryTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                AppColors.primaryBackgroundColor,
                AppColors.orangeColor
              ])),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: AppConstants.adaptiveScreen.setSp(30)),
              ),
            ),
            flex: 10,
          ),
          Expanded(
            child: SizedBox(),
            flex: 1,
          )
        ],
      ),
    );
  }
}

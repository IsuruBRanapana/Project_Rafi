import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Location'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    AppColors.primaryBackgroundColor,
                    AppColors.orangeColor
                  ])),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                AppImages.a,
                width: AppConstants.adaptiveScreen.setWidth(400),
                height: AppConstants.adaptiveScreen.setWidth(400),
              ),
            ),
            Container(
              child: Text('Sport Medicine Institute of Sri Lanka',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Image.asset(
                AppImages.b,
                width: AppConstants.adaptiveScreen.setWidth(400),
                height: AppConstants.adaptiveScreen.setWidth(400),
              ),
            ),
            Container(
              child: Text('Sport Medicine Unit,Kaluthara',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Image.asset(
                AppImages.c,
                width: AppConstants.adaptiveScreen.setWidth(400),
                height: AppConstants.adaptiveScreen.setWidth(400),
              ),
            ),
            Container(
              child: Text('Batticoloa Sport Medicine Unit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Image.asset(
                AppImages.d,
                width: AppConstants.adaptiveScreen.setWidth(400),
                height: AppConstants.adaptiveScreen.setWidth(400),
              ),
            ),
            Container(
              child: Text('Jaffna Sport Medicine Unit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Image.asset(
                AppImages.e,
                width: AppConstants.adaptiveScreen.setWidth(400),
                height: AppConstants.adaptiveScreen.setWidth(400),
              ),
            ),
            Container(
              child: Text('Sport Medicine Unit, Karapitiya',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}

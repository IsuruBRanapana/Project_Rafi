import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/core/utils/input_convertor.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';


class ProfileDetailView extends StatefulWidget {
  final LoginResponse response;

  ProfileDetailView({Key key, this.response}) : super(key: key);
  @override
  _ProfileDetailViewState createState() => _ProfileDetailViewState();
}

class _ProfileDetailViewState extends State<ProfileDetailView> {
  getBmi(double height, double weight){
    double bmi = (weight)/(height*height);
    return bmi.toStringAsFixed(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon:Icon(Icons.edit,color: Colors.white,) , onPressed: (){
            Navigator.pushNamed(context, Routes.EDIT_PROFILE,arguments: widget.response);
          },splashColor: AppColors.orangeColor,)
        ],
        title: Text('Your Profile'),
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
        padding: EdgeInsets.all(AppConstants.adaptiveScreen.setHeight(30)),
        child: ListView(
          children: [
            Container(
              height: AppConstants.adaptiveScreen.setHeight(400),
              child: Padding(
                padding:
                EdgeInsets.all(AppConstants.adaptiveScreen.setHeight(30)),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage: widget.response.imgUrl.isEmpty||widget.response.imgUrl=="null"?AssetImage(AppImages.profile):NetworkImage(widget.response.imgUrl),
                          radius: 88,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(30),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: AppColors.gradientBackground),
              height: AppConstants.adaptiveScreen.setHeight(130),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                  color: AppColors.primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  AppConstants.adaptiveScreen.setSp(28)),
                            ),
                            SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
                            Text(
                              widget.response.height+"cm",
                              style: TextStyle(
                                  color: AppColors.primaryTextColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                  AppConstants.adaptiveScreen.setSp(28)),
                            ),
                          ],
                        )),
                    Expanded(flex: 1, child: Column(
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              AppConstants.adaptiveScreen.setSp(28)),
                        ),
                        SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
                        Text(
                          widget.response.weight+"kg",
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.w600,
                              fontSize:
                              AppConstants.adaptiveScreen.setSp(28)),
                        ),
                      ],
                    )),
                    Expanded(flex: 1, child: Column(
                      children: [
                        Text(
                          'BMI',
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              AppConstants.adaptiveScreen.setSp(28)),
                        ),
                        SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
                        Text(
                          getBmi(double.parse(widget.response.height)/100, double.parse(widget.response.weight)),
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.w600,
                              fontSize:
                              AppConstants.adaptiveScreen.setSp(28)),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(70),
            ),
            Padding(
              padding: EdgeInsets.only(right: AppConstants.adaptiveScreen.setHeight(100),left:AppConstants.adaptiveScreen.setHeight(20) ),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person,color:AppColors.orangeColor),
                        SizedBox(
                          width: AppConstants.adaptiveScreen.setHeight(30),
                        ),
                        Text(widget.response.userName,style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(35),color: AppColors.primaryBackgroundColor),)
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.adaptiveScreen.setHeight(20),
                    ),
                    Row(children: [
                      Icon(Icons.mail,color:AppColors.orangeColor),
                      SizedBox(
                        width: AppConstants.adaptiveScreen.setHeight(30),
                      ),
                      Expanded(child: Text(widget.response.email,style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(35),color: AppColors.primaryBackgroundColor)))

                    ],)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
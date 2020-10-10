import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/widgets/rounded_corner_with_long_button.dart';

class ForgotPasswordCheckUserView extends StatefulWidget {
  @override
  _ForgotPasswordCheckUserViewState createState() =>
      _ForgotPasswordCheckUserViewState();
}

class _ForgotPasswordCheckUserViewState
    extends State<ForgotPasswordCheckUserView> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
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
        padding:  EdgeInsets.only(top: AppConstants.adaptiveScreen.setWidth(150),bottom: AppConstants.adaptiveScreen.setWidth(30),right: AppConstants.adaptiveScreen.setWidth(30),left: AppConstants.adaptiveScreen.setWidth(30)),
        child: Container(
          child: ListView(
            children: [
              Image.asset(AppImages.manInQuestion,width: AppConstants.adaptiveScreen.setWidth(250),
              height: AppConstants.adaptiveScreen.setHeight(250),),
              Center(
                child: Text(
                  'Forgot Your Password?',
                  style: TextStyle(
                      color: AppColors.primaryBackgroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppConstants.adaptiveScreen.setSp(35)),
                ),
              ),
              SizedBox(
                height: AppConstants.adaptiveScreen.setWidth(10),
              ),
              Center(
                child: Text('Enter Your Email Address we will send you a link to enter new password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: AppColors.primaryBackgroundColor,
                  fontSize: AppConstants.adaptiveScreen.setSp(25)
                ),),
              ),
              SizedBox(
                height: AppConstants.adaptiveScreen.setWidth(30),
              ),
              Padding(
                padding:  EdgeInsets.only(right: AppConstants.adaptiveScreen.setWidth(30),left: AppConstants.adaptiveScreen.setWidth(30)),
                child: TextField(
                  controller: _emailController,
                  maxLength: 30,
                  maxLengthEnforced: false,
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBackgroundColor)),
                      hintText: 'E mail Address',
                      counter: Offstage(),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBackgroundColor)),
                      hintStyle: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(32), color:AppColors.primaryBackgroundColor),
                      border: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBackgroundColor))),
                  style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(32), color: AppColors.primaryBackgroundColor, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: AppConstants.adaptiveScreen.setWidth(85),
              ),
              RoundedCornerGradientButton(
                text: 'Send',
                onTap: ()async {
                  //TODO: temporary added not in proper way
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailController.text)
                      .then((value) => print("check your mails"));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

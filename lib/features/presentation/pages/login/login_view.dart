import 'package:flutter/cupertino.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/presentation/pages/base_view.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/features/presentation/pages/widgets/rounded_corner_white_button.dart';

class LoginView extends BaseView{
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget buildView(context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.gradientBackground
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image(
                          //todo:add the application logo
                          image: AssetImage(AppImages.manInQuestion),
                          fit: BoxFit.scaleDown,
                          width: adaptiveScreen.setWidth(350),
                          height: adaptiveScreen.setHeight(250),
                        ),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(fontSize: adaptiveScreen.setSp(45), color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: adaptiveScreen.setHeight(20),
                      ),
                      Padding(
                        padding: EdgeInsets.all(AppConstants.adaptiveScreen.setWidth(50)),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: _usernameController,
                              maxLength: 30,
                              maxLengthEnforced: false,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                  hintText: 'Username',
                                  counter: Offstage(),
                                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                  hintStyle: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(32), color: Colors.white),
                                  border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                              style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(32), color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: AppConstants.adaptiveScreen.setHeight(50),
                            ),
                            TextField(
                              controller: _passwordController,
                              maxLength: 30,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.white,
                              maxLengthEnforced: false,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                counter: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, Routes.FORGOT_PASSWORD_RESET_PAGE);
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(color: Colors.white, fontSize: AppConstants.adaptiveScreen.setSp(25)),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                hintStyle: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(32), color: Colors.white),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              ),
                              obscureText: true,
                              style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(32), color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: adaptiveScreen.setHeight(60),
                      ),
                      RoundedCornerWhiteButton(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.HOME_PAGE);
                        },
                        text: 'Login',
                      ),
                      SizedBox(
                        height: adaptiveScreen.setHeight(40),
                      ),
                      InkWell(onTap: (){
                        Navigator.pushNamed(context, Routes.SIGN_UP_PAGE);
                      },

                          child: Text("You haven't account?PleaseSign Up",style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


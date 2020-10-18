import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_rafi/core/injection_container.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';
import 'package:project_rafi/features/presentation/bloc/bloc.dart';
import 'package:project_rafi/features/presentation/pages/base_view.dart';
import 'package:project_rafi/features/presentation/pages/widgets/rounded_corner_white_button.dart';

class SignUpView extends BaseView {
  final _bloc = sl<SignUpBloc>();
  final _firstNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _positionController = TextEditingController();
  final _injuryPeriodController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget buildView(context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: BlocProvider<SignUpBloc>(
        create: (_) => _bloc,
        child: BlocListener<SignUpBloc, SignUpState>(
          cubit: _bloc,
          listener: (context, state) async {
            if (state is SignUpLoading) {
              pr.show();
            } else if (state is SignUpError) {
              pr.hide();
              // _passwordController.clear();
              // _usernameController.clear();
//                  showMessageDialog(context, message: state.message, title: 'Error');
              // Navigator.pushNamed(context, Router.EPIC_SURE_HOME_PAGE);
            } else if (state is SignUpLoaded) {
              pr.hide();
              _passwordController.clear();
              print("loaded");
              print(state);
              Navigator.pushNamed(context, Routes.LOGIN_PAGE);
              // _usernameController.clear();
              // Navigator.pushNamed(context, Router.EPIC_SURE_HOME_PAGE);
            } else {
              pr.hide();
            }
          },
          child: Form(
            //       key: formkey,
            //       child: ListView(
            //         children: <Widget>[
            //           Container(
            //             decoration: BoxDecoration(
            //                 gradient: AppColors.gradientBackground
            //             ),
            //             child: Padding(
            //               padding: const EdgeInsets.only(top: 20.0),
            //               child: Column(
            //                 children: <Widget>[
            //                   Container(
            //                     padding: EdgeInsets.symmetric(horizontal: 30),
            //                     child: Column(
            //                       children: <Widget>[
            //                         Padding(
            //                           padding: const EdgeInsets.only(left: 20.0),
            //                           child: Image(
            //                             //todo:add the application logo
            //                             image: AssetImage(AppImages.manInQuestion),
            //                             fit: BoxFit.scaleDown,
            //                             width: adaptiveScreen.setWidth(200),
            //                             height: adaptiveScreen.setHeight(200),
            //                           ),
            //                         ),
            //                         Text(
            //                           'Sign',
            //                           style: TextStyle(
            //                               fontSize: adaptiveScreen.setSp(45),
            //                               color: Colors.white,
            //                               fontWeight: FontWeight.bold),
            //                           textAlign: TextAlign.center,
            //                         ),
            // body:Form(
            key: formkey,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: AppColors.gradientBackground
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Expanded(flex: 1, child: SizedBox()),
                                  Expanded(flex: 1, child: SizedBox()),
                                  Expanded(flex: 1, child: SizedBox()),
                                  Expanded(flex: 2, child: SizedBox()),
                                  Expanded(flex: 1,
                                      child: Text(
                                        'Login', textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Colors.white),)),

                                  Expanded(
                                    flex: 1,
                                    child: IconButton(

                                      onPressed: () {
                                        Navigator.pushNamed(context, Routes.LOGIN_PAGE);
                                      },
                                      icon: Icon(
                                        Icons.person, color: Colors.white,
                                        size: AppConstants.adaptiveScreen.setSp(
                                            60),),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Image(
                                  //todo:add the application logo
                                  image: AssetImage(AppImages.logo),
                                  fit: BoxFit.scaleDown,
                                  width: adaptiveScreen.setWidth(200),
                                  height: adaptiveScreen.setHeight(200),
                                ),
                              ),
                              Text(
                                'Sign',
                                style: TextStyle(
                                    fontSize: adaptiveScreen.setSp(45),
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),

                              Padding(
                                padding: EdgeInsets.all(
                                    AppConstants.adaptiveScreen.setWidth(50)),
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return ("Please enter the Name");
                                        }
                                        return null;
                                      },
                                      controller: _firstNameController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: 'Isuru',
                                          counter: Offstage(),
                                          labelText: 'Name',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: AppConstants.adaptiveScreen
                                          .setHeight(50),
                                    ),
                                    TextFormField(
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return ("Please enter the Age");
                                        }
                                        return null;
                                      },
                                      controller: _ageController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: '25',
                                          counter: Offstage(),
                                          labelText: 'Age',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: AppConstants.adaptiveScreen
                                          .setHeight(50),
                                    ),
                                    TextFormField(
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return ("Please enter the height");
                                        }
                                        return null;
                                      },
                                      controller: _heightController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: '168.0(Please Enter in Centimeter)',
                                          labelText: 'Height',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          counter: Offstage(),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(
                                      height: AppConstants.adaptiveScreen
                                          .setHeight(50),
                                    ),
                                    TextFormField(
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return ("Please enter weight");
                                        }
                                        return null;
                                      },
                                      controller: _weightController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: '65(Please Enter in Kilogram)',
                                          labelText: 'Weight',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          counter: Offstage(),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(
                                      height: AppConstants.adaptiveScreen
                                          .setHeight(50),
                                    ),
                                    TextFormField(
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return ("Please enter the position");
                                        }
                                        return null;
                                      },
                                      controller: _positionController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: 'Student',
                                          labelText: 'Position',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),

                                          counter: Offstage(),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(
                                      height: AppConstants.adaptiveScreen
                                          .setHeight(50),
                                    ),
                                    TextFormField(
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return ("Please enter injury period");
                                        }
                                        return null;
                                      },
                                      controller: _injuryPeriodController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(errorStyle:
                                      TextStyle(color: AppColors.orangeColor),


                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: 'Three months',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          labelText: 'Injury Period',
                                          counter: Offstage(),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: adaptiveScreen.setHeight(60),
                                    ),

                                    TextFormField(
                                      validator: validateEmail,
                                      controller: _emailController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: 'isururanapana@gmail.com',
                                          labelText: 'Email',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          counter: Offstage(),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: adaptiveScreen.setHeight(60),
                                    ),
                                    TextField(
                                      obscureText: true,
                                      controller: _passwordController,
                                      maxLength: 30,
                                      maxLengthEnforced: false,
                                      textInputAction: TextInputAction.done,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          errorStyle:
                                          TextStyle(
                                              color: AppColors.orangeColor),

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: 'Password',
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(30),
                                              color: Colors.white),
                                          counter: Offstage(),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintStyle: TextStyle(
                                              fontSize: AppConstants
                                                  .adaptiveScreen.setSp(28),
                                              color: Colors.grey),
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white))),
                                      style: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(32),
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: adaptiveScreen.setHeight(40),
                              ),
                              RoundedCornerWhiteButton(
                                onTap: () {
                                  SignUpRequest request = SignUpRequest(
                                      userName: _firstNameController.text,
                                      age: _ageController.text,
                                      weight: _weightController.text,
                                      height: _heightController.text,
                                      position: _positionController.text,
                                      injuryPeriod: _injuryPeriodController
                                          .text,
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                    imgUrl: ""
                                  );
                                  _bloc.add(GetSignUp(request: request));
                                  // Navigator.pushNamed(context, Router.EPIC_SURE_ASSESSOR_HOME_PAGE);
                                },
                                text: 'SignUp',
                              ),
                              SizedBox(
                                height: adaptiveScreen.setHeight(30),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    }
    return null;
  }
}


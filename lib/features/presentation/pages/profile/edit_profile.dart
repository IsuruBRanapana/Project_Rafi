import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/presentation/pages/profile/crud.dart';
import 'package:project_rafi/features/presentation/pages/widgets/rounded_corner_white_button.dart';

class EditProfile extends StatefulWidget {
  final LoginResponse args;

  EditProfile({this.args});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _injuryPeriodController = TextEditingController();
  final UserManagement userMana = UserManagement();

  String img = "-";
  String uName = "-";
  String height = "-";
  String weight = "-";
  String injuryPeriod = "-";

  File _image;
  String url;
  String upFirstName;
  String upHeight;
  String upWeight;
  String upInjuryPeriod;
  String upImg;
  var formkey = GlobalKey<FormState>();

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
      print('Image Path $_image');
      uploadPic();
    });
  }

  Future uploadPic() async {
    // String fileName = basename(_image.path);
    StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child('propic');
    var timeKey = DateTime.now();
    StorageUploadTask uploadTask =
        firebaseStorageRef.child(timeKey.toString() + ".jpg").putFile(_image);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    var imgUrl = await taskSnapshot.ref.getDownloadURL();
    url = imgUrl.toString();
    print('Image Url     ' + url);
    setState(() {
      print("Profile Picture uploaded");
      img = url;
    });
  }

  @override
  void initState() {
    img = widget.args.imgUrl;
    uName = widget.args.userName;
    height = widget.args.height;
    weight = widget.args.weight;
    injuryPeriod = widget.args.injuryPeriod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Your Profile'),
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
      body: Form(
        key: formkey,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  // gradient: AppColors.gradientBackground
                  ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: CircleAvatar(
                              backgroundImage: widget.args.imgUrl.isEmpty?AssetImage(AppImages.profile):NetworkImage(widget.args.imgUrl),
                              radius: 88,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(flex: 2, child: SizedBox()),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.camera_alt,
                                    color: AppColors.primaryBackgroundColor,
                                  ),
                                  onPressed: () {
                                    getImage();
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                                AppConstants.adaptiveScreen.setWidth(50)),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return ("Please enter the name");
                                    }
                                    return null;
                                  },
                                  controller: _firstNameController,
                                  maxLength: 30,
                                  maxLengthEnforced: false,
                                  textInputAction: TextInputAction.done,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: widget.args.userName,
                                      errorStyle: TextStyle(
                                          color: AppColors.orangeColor),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      counter: Offstage(),
                                      labelText: 'Name',
                                      labelStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(30),
                                          color:
                                              AppColors.primaryBackgroundColor),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      hintStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(28),
                                          color: Colors.grey),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor))),
                                  style: TextStyle(
                                      fontSize:
                                          AppConstants.adaptiveScreen.setSp(32),
                                      color: AppColors.primaryBackgroundColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height:
                                      AppConstants.adaptiveScreen.setHeight(50),
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
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          color: AppColors.orangeColor),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      labelText: 'Height',
                                      hintText: widget.args.height+" cm",
                                      labelStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(30),
                                          color:
                                              AppColors.primaryBackgroundColor),
                                      counter: Offstage(),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      hintStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(28),
                                          color: Colors.grey),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor))),
                                  style: TextStyle(
                                      fontSize:
                                          AppConstants.adaptiveScreen.setSp(32),
                                      color: AppColors.primaryBackgroundColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height:
                                      AppConstants.adaptiveScreen.setHeight(50),
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
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          color: AppColors.orangeColor),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      labelText: 'Weight',
                                      hintText: widget.args.weight+" kg",
                                      labelStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(30),
                                          color:
                                              AppColors.primaryBackgroundColor),
                                      counter: Offstage(),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      hintStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(28),
                                          color: Colors.grey),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor))),
                                  style: TextStyle(
                                      fontSize:
                                          AppConstants.adaptiveScreen.setSp(32),
                                      color: AppColors.primaryBackgroundColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height:
                                      AppConstants.adaptiveScreen.setHeight(50),
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
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          color: AppColors.orangeColor),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      labelStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(30),
                                          color:
                                              AppColors.primaryBackgroundColor),
                                      labelText: 'Injury Period',
                                      hintText: widget.args.injuryPeriod,
                                      counter: Offstage(),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor)),
                                      hintStyle: TextStyle(
                                          fontSize: AppConstants.adaptiveScreen
                                              .setSp(28),
                                          color: Colors.grey),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors
                                                  .primaryBackgroundColor))),
                                  style: TextStyle(
                                      fontSize:
                                          AppConstants.adaptiveScreen.setSp(32),
                                      color: AppColors.primaryBackgroundColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height:
                                      AppConstants.adaptiveScreen.setHeight(60),
                                ),
                              ],
                            ),
                          ),
                          RoundedCornerWhiteButton(
                            onTap: () {
                              // String upFirstName;
                              // String upHeight;
                              // String upWeight;
                              // String upInjuryPeriod;
                              // String upImg;
                              _firstNameController.text.isEmpty?
                              upFirstName=uName:upFirstName=_firstNameController.text;
                              _heightController.text.isEmpty?
                              upHeight=height:upHeight=_heightController.text;
                              _weightController.text.isEmpty?
                              upWeight=weight:upWeight=_weightController.text;
                              _injuryPeriodController.text.isEmpty?
                              upInjuryPeriod=injuryPeriod:upInjuryPeriod=_injuryPeriodController.text;
                              userMana.updateData({
                                'userName':upFirstName,
                                'weight': upWeight,
                                'height': upHeight,
                                'injuryPeriod': upInjuryPeriod,
                                'imgUrl':img,
                              }, widget.args.uid);
                              // _firstNameController.text.isEmpty
                              //     ? upEmail = email
                              //     : upEmail = _firstNameController.text;
                              // _secondNameController.text.isEmpty
                              //     ? upFirstName = uName
                              //     : upFirstName = _secondNameController.text;
                              // lastNameController.text.isEmpty
                              //     ? upLastName = lastName
                              //     : upLastName = lastNameController.text;
                              // url == null ? upImg = img : upImg = url;
                              // user.updateData({
                              //   'email': upEmail,
                              //   "firstName": upFirstName,
                              //   'lastName': upLastName,
                              //   'photoURL': upImg
                              // });
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            text: 'Submit',
                          ),
                          SizedBox(
                            height: AppConstants.adaptiveScreen.setHeight(30),
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
    );
  }
}

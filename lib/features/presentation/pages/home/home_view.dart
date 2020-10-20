import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_rafi/core/injection_container.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/domain/entities/request/data_request.dart';
import 'package:project_rafi/features/domain/entities/request/theropist_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/presentation/bloc/bloc.dart';
import 'package:project_rafi/features/presentation/pages/base_view.dart';
import 'package:project_rafi/features/presentation/pages/home/widgets/custom_card_view.dart';
import 'package:project_rafi/features/presentation/pages/home/widgets/custom_drawer_tile.dart';
import 'package:project_rafi/features/presentation/pages/home/widgets/swipper_image.dart';
import 'package:project_rafi/features/presentation/pages/therapist/therapist.dart';

class HomeView extends BaseView {
  final LoginResponse userName;

  HomeView({this.userName});

  final _bloc = sl<TheroBloc>();
  final _dataBloc = sl<GetDataBloc>();

  @override
  Widget buildView(BuildContext context) {
    return BlocProvider<TheroBloc>(
      create: (_) => _bloc,
      child: BlocListener<TheroBloc, TheroState>(
        cubit: _bloc,
        listener: (context, state) {
          if (state is TheroLoading) {
            print("loading");
          } else if (state is TheroError) {
            pr.hide();

//                  showMessageDialog(context, message: state.message, title: 'Error');
            // Navigator.pushNamed(context, Router.EPIC_SURE_HOME_PAGE);
          } else if (state is TheroLoaded) {
            pr.hide();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => Therapists(
                          list: state.response,
                        )));
            // Navigator.pushNamed(context, Router.EPIC_SURE_HOME_PAGE);
          } else {
            pr.hide();
          }
        },
        child: Container(
            decoration: BoxDecoration(gradient: AppColors.gradientBackground),
            child: Scaffold(
              //appBar: AppBar(backgroundColor:Colors.transparent,leading: Icon(Icons.line_weight_sharp),),
              drawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                        child: Row(
                          children: [
                            Image.asset(AppImages.manInQuestion),
                            Expanded(
                              child: Text(
                                'Hi ${userName.userName}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        AppConstants.adaptiveScreen.setSp(50),
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: AppColors.gradientBackground)),
                    // CustomDrawerListTile(
                    //     pressedFunction: () {},
                    //     drawerTileTitle: 'About Us',
                    //     icon: Icons.people_alt),
                    CustomDrawerListTile(
                      pressedFunction: () {},
                      drawerTileTitle: 'Contact Us',
                      icon: Icons.phone,
                    ),
                    CustomDrawerListTile(
                      pressedFunction: () async {
                        final FirebaseAuth _auth = FirebaseAuth.instance;
                        await _auth.signOut();
                        Navigator.pushNamedAndRemoveUntil(context, Routes.LOGIN_PAGE, (route) => false);
                      },
                      icon: Icons.lock,
                      drawerTileTitle: 'Sign Out',
                    ),
                    CustomDrawerListTile(
                      pressedFunction: () {
                        Navigator.pop(context);
                      },
                      drawerTileTitle: 'Home',
                      icon: Icons.home,
                    )
                  ],
                ),
              ),

              backgroundColor: Colors.transparent,
              body: Padding(
                padding: EdgeInsets.only(
                    top: AppConstants.adaptiveScreen.setWidth(50),
                    right: AppConstants.adaptiveScreen.setWidth(10)),
                child: Container(
                  child: ListView(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.line_weight_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "HOME",
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
                      SizedBox(
                        height: AppConstants.adaptiveScreen.setWidth(20),
                      ),
                      // Center(
                      //   child: Image.asset(
                      //     //todo:copany name and the logo
                      //     AppImages.manInQuestion,
                      //     width: AppConstants.adaptiveScreen.setWidth(200),
                      //     height: AppConstants.adaptiveScreen.setWidth(200),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: AppConstants.adaptiveScreen.setWidth(50),
                      // ),
                      Container(child: ImageSlider(),height: AppConstants.adaptiveScreen.setHeight(400),),
                      Padding(
                        padding: EdgeInsets.only(
                          top: AppConstants.adaptiveScreen.setHeight(30),
                            right: AppConstants.adaptiveScreen.setWidth(70),
                            left: AppConstants.adaptiveScreen.setWidth(80)),
                        child: Row(
                          children: [
                            CustomCardView(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.INJURY_TYPE);
                              },
                              cardTitle: 'Injury Type',
                              img: AppImages.ing,
                            ),
                            SizedBox(
                              width: AppConstants.adaptiveScreen.setWidth(30),
                            ),
                            CustomCardView(
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.LOCATION);
                              },
                              cardTitle: 'Recommended Location',
                              img: AppImages.nine,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppConstants.adaptiveScreen.setWidth(20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: AppConstants.adaptiveScreen.setWidth(70),
                            left: AppConstants.adaptiveScreen.setWidth(80)),
                        child: Row(
                          children: [
                            CustomCardView(
                              onPressed: () {
                                TheropistRequest req =
                                    TheropistRequest(userName: userName.userName);
                                _bloc.add(GetThero(request: req));
                              },
                              cardTitle: 'Therapist',
                              img: AppImages.therapist,
                            ),
                            SizedBox(
                              width: AppConstants.adaptiveScreen.setWidth(30),
                            ),
                            BlocProvider<GetDataBloc>(
                              create: (_)=>_dataBloc,
                              child: BlocListener<GetDataBloc,DataState>(
                                cubit: _dataBloc,
                                listener: (context, state){
                                  if (state is DataLoading) {
                                    print("loading");
                                  } else if (state is TheroError) {
                                    pr.hide();

//                  showMessageDialog(context, message: state.message, title: 'Error');
                                    // Navigator.pushNamed(context, Router.EPIC_SURE_HOME_PAGE);
                                  } else if (state is DataLoaded) {
                                    pr.hide();
                                    Navigator.pushNamed(context, Routes.PROFILE,arguments: state.user);
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (_) => Therapists(
//                                              list: state.response,
//                                            )));
//                                    // Navigator.pushNamed(context, Router.EPIC_SURE_HOME_PAGE);
                                  } else {
                                    pr.hide();
                                  }
                                },
                                child: CustomCardView(
                                  onPressed: () {
                                    final req= DataRequestEntity(uid: userName.uid);
                                    _dataBloc.add(GetData(loginRequest: req));
                                  },
                                  cardTitle: 'My Account',
                                  img: AppImages.profile,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/home/widgets/custom_card_view.dart';
import 'package:project_rafi/features/presentation/pages/home/widgets/custom_drawer_tile.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        Text(
                          'Hi Isuru',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: AppConstants.adaptiveScreen.setSp(50),
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    decoration:
                        BoxDecoration(gradient: AppColors.gradientBackground)),
                CustomDrawerListTile(
                    pressedFunction: () {},
                    drawerTileTitle: 'About Us',
                    icon: Icons.people_alt),
                CustomDrawerListTile(
                  pressedFunction: () {},
                  drawerTileTitle: 'Contact Us',
                  icon: Icons.phone,
                ),
                CustomDrawerListTile(
                  pressedFunction: () {},
                  icon: Icons.lock,
                  drawerTileTitle: 'Change Password',
                ),
                CustomDrawerListTile(
                  pressedFunction: () {},
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.line_weight_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppConstants.adaptiveScreen.setWidth(20),
                  ),
                  Center(
                    child: Image.asset(
                      //todo:copany name and the logo
                      AppImages.manInQuestion,
                      width: AppConstants.adaptiveScreen.setWidth(200),
                      height: AppConstants.adaptiveScreen.setWidth(200),
                    ),
                  ),
                  SizedBox(
                    height: AppConstants.adaptiveScreen.setWidth(50),
                  ),
Padding(
  padding:  EdgeInsets.only(right: AppConstants.adaptiveScreen.setWidth(20),left: AppConstants.adaptiveScreen.setWidth(20)),
  child:   Row(
    children: [
          CustomCardView(
        onPressed: (){},
        cardTitle: 'Injury Type',
      ),
      SizedBox(
        width: AppConstants.adaptiveScreen.setWidth(30),
      ),
      CustomCardView(
        onPressed: (){},
        cardTitle: 'First Aid',
      ),
    ],
  ),
),
                  SizedBox(
                    height: AppConstants.adaptiveScreen.setWidth(20),
                  ),
                  Center(
                    child: CustomCardView(
                      onPressed: (){},
                      cardTitle: 'Therapist',
                    ),
                  ),
                ],

              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/presentation/pages/injury_type/injury_type_card/injury_type_card.dart';

class InjuryTypeView extends StatefulWidget {
  @override
  _InjuryTypeViewState createState() => _InjuryTypeViewState();
}

class _InjuryTypeViewState extends State<InjuryTypeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Injury Type'),
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
      body:Padding(
        padding:  EdgeInsets.only(
          top: AppConstants.adaptiveScreen.setHeight(80),
          right: AppConstants.adaptiveScreen.setHeight(20),
          left: AppConstants.adaptiveScreen.setHeight(20),

          bottom: AppConstants.adaptiveScreen.setHeight(80)
        ),
        child: Container(
          child: ListView(
            children: [
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.BONE);
                },
                cardTitle: 'Bone',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.JOINT);
                },
                cardTitle: 'Joint',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.LIGAMENT);
                },
                cardTitle: 'Ligament',
              ),SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.MUSCLE);
                },
                cardTitle: 'Muscle',
              ),SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.NECK);
                },
                cardTitle: 'Neck',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.SHOULDER);
                },
                cardTitle: 'Shoulder',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.LOWERBACKPAIN);
                },
                cardTitle: 'Lower Back Pain',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.KNEE);
                },
                cardTitle: 'Knee',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              InjuryTypeCard(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.ANKLE);
                },
                cardTitle: 'Ankle',
              ),
              SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              // InjuryTypeCard(
              //   onPressed: (){
              //     Navigator.pushNamed(context, Routes.OVER_USE_INJURY);
              //   },
              //   cardTitle: 'Cronic/OverUse Injury',
              // ),
              // SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
              //
              // InjuryTypeCard(
              //   onPressed: (){
              //     Navigator.pushNamed(context, Routes.BASEBALL_INJURY);
              //   },
              //   cardTitle: 'BaseBall Injury',
              // )
            ],
          ),
        ),
      )


    );
  }
}

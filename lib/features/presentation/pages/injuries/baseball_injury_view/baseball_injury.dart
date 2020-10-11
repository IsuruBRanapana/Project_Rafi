import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/navigation_routes.dart';
import 'package:project_rafi/features/presentation/pages/injuries/baseball_injury_view/widgets/baseball_card_view.dart';

class BaseballInjuryView extends StatefulWidget {
  @override
  _BaseballInjuryViewState createState() => _BaseballInjuryViewState();
}

class _BaseballInjuryViewState extends State<BaseballInjuryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseball Injury'),
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
      body: ListView(
        children: [
        BaseBallCardView(
          cardTitle: 'Knee',
          onPressed: (){
            Navigator.pushNamed(context, Routes.KNEE_VIEW);

          },
        ),
          BaseBallCardView(
            cardTitle: 'Neck',
            onPressed: (){
              Navigator.pushNamed(context, Routes.NECK_VIEW);

            },

          ),
          BaseBallCardView(
            cardTitle: 'Shoulder',
            onPressed: (){
              Navigator.pushNamed(context, Routes.SHOULDER_VIEW);
            },

          ),
          BaseBallCardView(
            cardTitle: 'Lower BackPain',
            onPressed: (){
              Navigator.pushNamed(context, Routes.LOWER_BACK_PAIN);
            },

          ),
          BaseBallCardView(
            cardTitle: 'Ankle',
            onPressed: (){
              Navigator.pushNamed(context, Routes.ANKLE_VIEW);
            },

          )
        ],
      ),
    );
  }
}

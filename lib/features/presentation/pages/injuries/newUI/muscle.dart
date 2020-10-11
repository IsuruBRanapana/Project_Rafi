import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class MuscleView extends StatefulWidget {
  @override
  _MuscleViewState createState() => _MuscleViewState();
}

class _MuscleViewState extends State<MuscleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muscle Injury'),
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
    );
  }
}

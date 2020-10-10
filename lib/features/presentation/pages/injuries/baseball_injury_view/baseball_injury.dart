import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

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
    );
  }
}

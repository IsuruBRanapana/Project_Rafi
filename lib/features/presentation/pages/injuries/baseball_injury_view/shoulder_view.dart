import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class ShoulderView extends StatefulWidget {
  @override
  _ShoulderViewState createState() => _ShoulderViewState();
}

class _ShoulderViewState extends State<ShoulderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acute Injury'),
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

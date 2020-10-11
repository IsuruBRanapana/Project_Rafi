import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class JointView extends StatefulWidget {
  @override
  _JointViewState createState() => _JointViewState();
}

class _JointViewState extends State<JointView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joint Injury'),
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

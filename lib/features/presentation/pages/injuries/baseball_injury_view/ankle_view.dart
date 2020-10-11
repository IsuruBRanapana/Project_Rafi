import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class AnkleView extends StatefulWidget {
  @override
  _AnkleViewState createState() => _AnkleViewState();
}

class _AnkleViewState extends State<AnkleView> {
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

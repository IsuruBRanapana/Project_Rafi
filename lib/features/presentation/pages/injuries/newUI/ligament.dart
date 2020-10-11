import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class LigamentView extends StatefulWidget {
  @override
  _LigamentViewState createState() => _LigamentViewState();
}

class _LigamentViewState extends State<LigamentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ligament Injury'),
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

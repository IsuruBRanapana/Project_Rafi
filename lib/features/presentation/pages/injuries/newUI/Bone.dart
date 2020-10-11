import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class BoneView extends StatefulWidget {
  @override
  _BoneViewState createState() => _BoneViewState();
}

class _BoneViewState extends State<BoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bone Injury'),
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

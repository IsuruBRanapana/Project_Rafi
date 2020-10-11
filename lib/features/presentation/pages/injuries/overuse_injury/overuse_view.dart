import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class OverUseView extends StatefulWidget {
  @override
  _OverUseViewState createState() => _OverUseViewState();
}

class _OverUseViewState extends State<OverUseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Cronic/OverUse Injury'),
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

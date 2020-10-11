import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class LowerBackPainView extends StatefulWidget {
  @override
  _LowerBackPainViewState createState() => _LowerBackPainViewState();
}

class _LowerBackPainViewState extends State<LowerBackPainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lower Back Pain'),
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

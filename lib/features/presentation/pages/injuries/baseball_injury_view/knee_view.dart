import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class KneeView extends StatefulWidget {
  @override
  _KneeViewState createState() => _KneeViewState();
}

class _KneeViewState extends State<KneeView> {
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

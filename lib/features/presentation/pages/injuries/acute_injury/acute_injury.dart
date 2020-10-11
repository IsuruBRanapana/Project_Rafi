import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';

class AcuteInjuryView extends StatefulWidget {
  @override
  _AcuteInjuryViewState createState() => _AcuteInjuryViewState();
}

class _AcuteInjuryViewState extends State<AcuteInjuryView> {
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

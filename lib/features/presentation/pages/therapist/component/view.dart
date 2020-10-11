import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';

class TheroView extends StatefulWidget {
  final TheroResponse response;

  const TheroView({Key key, this.response}) : super(key: key);
  @override
  _TheroViewState createState() => _TheroViewState();
}

class _TheroViewState extends State<TheroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
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

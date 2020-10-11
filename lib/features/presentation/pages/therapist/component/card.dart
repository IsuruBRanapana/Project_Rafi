import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';
import 'package:project_rafi/features/presentation/pages/therapist/component/view.dart';

class CustomTherapistView extends StatefulWidget {
  final Function onPressed;
  final String cardTitle;
  final TheroResponse response;

  const CustomTherapistView({Key key, this.onPressed, this.cardTitle, this.response}) : super(key: key);
  @override
  _CustomTherapistViewState createState() => _CustomTherapistViewState();
}

class _CustomTherapistViewState extends State<CustomTherapistView> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15)),
          width: AppConstants.adaptiveScreen.setWidth(300),
          height: AppConstants.adaptiveScreen.setWidth(150),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                children: [
                  Text(
                    widget.response.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: AppConstants.adaptiveScreen.setSp(34),
                        color: AppColors.primaryBackgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: AppConstants.adaptiveScreen.setWidth(20),
                  ),
                  Text(
                    widget.response.special,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: AppConstants.adaptiveScreen.setSp(20),
                        color: AppColors.primaryBackgroundColor,
                    ),
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>TheroView(response: widget.response,)));
              },
            ),
          ),
        ));
  }
}

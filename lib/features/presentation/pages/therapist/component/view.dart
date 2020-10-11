import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: Text(widget.response.name),
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
      body: Column(
        children: [
          SizedBox(
            height: AppConstants.adaptiveScreen.setHeight(50),
          ),
          Center(
              child: CircleAvatar(
            radius: 92,
            backgroundImage: NetworkImage(widget.response.photoUrl),
          )),
          SizedBox(height: AppConstants.adaptiveScreen.setHeight(50),),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text(
                    'Name ',
                    style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(30), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(flex: 1, child: Text(':')),
              Expanded(
                  flex: 3,
                  child: Text(
                    widget.response.name,
                    textAlign: TextAlign.start,
                  ))
            ],
          ),

          SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text(
                    'Special ',
                    style: TextStyle(fontSize:AppConstants.adaptiveScreen.setSp(30), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(flex: 1, child: Text(':')),
              Expanded(
                  flex: 3,
                  child: Text(
                    widget.response.special,
                    textAlign: TextAlign.start,
                  ))
            ],
          ),

          SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text(
                    'Email ',
                    style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(30), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(flex: 1, child: Text(':')),
              Expanded(
                  flex: 3,
                  child: Text(
                    widget.response.email,
                    textAlign: TextAlign.start,
                  ))
            ],
          ),

          SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text(
                    'Tel ',
                    style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(30), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //Expanded(flex: 1, child: Text(':')),
              Expanded(
                  flex: 3,
                  child: IconButton(
                    icon: Icon(Icons.call),
                    onPressed:(){
                      launch("tel://${widget.response.mobile}");
                    },
                  ))
            ],
          )
        ],
      ),
    );
  }
}

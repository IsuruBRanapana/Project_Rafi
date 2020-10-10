import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class CustomDrawerListTile extends StatelessWidget{
  final Function pressedFunction;
  final String drawerTileTitle;
  final IconData icon;

  const CustomDrawerListTile({Key key, this.pressedFunction, this.drawerTileTitle,this.icon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
      ),
      child: Padding(
        padding: const EdgeInsets.only(right:8.0,left: 8.0),
        child: InkWell(
          splashColor: AppColors.primaryBackgroundColor,
          onTap: pressedFunction

          ,
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                 Icon(icon,color: AppColors.primaryBackgroundColor,) ,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(drawerTileTitle,style: TextStyle(color:AppColors.primaryBackgroundColor,fontSize: AppConstants.adaptiveScreen.setSp(30)),),
                  ),
                ],
                ),
                Icon(Icons.arrow_right,color: AppColors.primaryBackgroundColor,)
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }}
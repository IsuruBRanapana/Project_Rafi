import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class PageBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
          Container(
            child: Text(
              "@Powered by Baseball Help",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: AppConstants.adaptiveScreen.setSp(20),),textAlign: TextAlign.right,
            ),
          ),
          SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
        ],
      ),
    );
  }
}

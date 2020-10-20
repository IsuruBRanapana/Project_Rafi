import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class CommonCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final double latitude;
  final double longitude;

  CommonCard({this.imgUrl, this.title, this.latitude, this.longitude});
  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10.0,
        child: Container(
         decoration:
         BoxDecoration(borderRadius: BorderRadius.circular(15),
           color: Colors.white,
           boxShadow: [
           BoxShadow(
             color: Colors.grey,
             offset: Offset(0.0, 1.0), //(x,y)
             blurRadius: 6.0,
           ),
         ],),
         width: AppConstants.adaptiveScreen.setWidth(550),
         height: AppConstants.adaptiveScreen.setWidth(350),

         child: Container(
           child: Column(
             children: [
               Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),
                     color: AppColors.primaryBackgroundColor
                 ),
                 width: AppConstants.adaptiveScreen.setWidth(550),
                 height: AppConstants.adaptiveScreen.setWidth(80),
                 child: Center(
                   child: Text(
                     title,
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         fontSize: AppConstants.adaptiveScreen.setSp(34),
                         color: Colors.white,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
               ),
               SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
               Image.asset(imgUrl,width:AppConstants.adaptiveScreen.setWidth(150) ,
                 height: AppConstants.adaptiveScreen.setWidth(150),),
               SizedBox(height: AppConstants.adaptiveScreen.setHeight(20),),
               Row(
                 children: [
                   Expanded(child: SizedBox()),
                   InkWell(
                     onTap: () async {
                       await launchMap(latitude, longitude, title);
                     },
                     child: Row(
                       children: [
                         Icon(Icons.map,color: AppColors.primaryBackgroundColor,),
                         SizedBox(width: 10,),
                         Text("Navigation",style: TextStyle(fontSize: AppConstants.adaptiveScreen.setSp(30),fontWeight: FontWeight.bold,color: AppColors.primaryBackgroundColor),),
                         SizedBox(width: 30,),
                       ],
                     ),
                   )
                 ],
               )
             ],
           ),
         ),
            ));
  }
  launchMap(double latitude, double longitude, String title) async {
    final availableMaps = await MapLauncher.installedMaps;
    print(
        availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]
    await availableMaps.first.showMarker(
      coords: Coords(latitude, longitude),
      title: title,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class LigamentView extends StatefulWidget {
  @override
  _LigamentViewState createState() => _LigamentViewState();
}

class _LigamentViewState extends State<LigamentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ligament Injury'),
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
      body: Padding(
        padding: EdgeInsets.only(left: 8,right: 8),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                AppImages.seven,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Sprain (acute)\nA sprain is a stretching or tearing of ligaments — the tough bands of fibrous tissue that connect two bones together in your joints. The most common location for a sprain is in your ankle.\nInitial treatment includes rest, ice, compression and elevation. Mild sprains can be successfully treated at home. Severe sprains sometimes require surgery to repair torn ligaments.\nThe difference between a sprain and a strain is that a sprain injures the bands of tissue that connect two bones together, while a strain involves an injury to a muscle or to the band of tissue that attaches a muscle to a bone.\nSymptoms\nSigns and symptoms will vary, depending on the severity of the injury, and may include:\nPain\nSwelling\nBruising\nLimited ability to move the affected joint\nHearing or feeling a \"pop\" in your joint at the time of injury ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Inflammation (chronic)\nInflammation refers to your body’s process of fighting against things that harm it, such as infections, injuries, and toxins, in an attempt to heal itself. When something damages your cells, your body releases chemicals that trigger a response from your .\nThis response includes the release of antibodies and proteins, as well as increased blood flow to the damaged area. The whole process usually lasts for a few hours or days in the case of acute inflammation.\nChronic inflammation happens when this response lingers, leaving your body in a constant state of alert. Over time, chronic inflammation may have a negative impact on your tissues and organs. Some  suggests that chronic inflammation could also play a role in a range of conditions, from cancer to asthma.\nRead on to learn more about chronic inflammation, including common causes and foods that fight it.\n\nCommon symptoms of chronic inflammation include:\nfatigue\nfever\nmouth sores\nrashes\nabdominal pain\nchest pain",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

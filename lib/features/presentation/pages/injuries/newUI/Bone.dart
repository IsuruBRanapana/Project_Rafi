import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class BoneView extends StatefulWidget {
  @override
  _BoneViewState createState() => _BoneViewState();
}

class _BoneViewState extends State<BoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bone Injury'),
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
        padding: EdgeInsets.only(left: 8,right: 8,),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                AppImages.five,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Bone fracture (acute)\nA fracture is a break, usually in a bone. If the broken bone punctures the skin, it is called an open or compound fracture. Fractures commonly happen because of car accidents, or. Other causes are and, which cause weakening of the bones. Overuse can cause stress fractures, which are very small cracks in the bone.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Symptoms of a fracture are\nIntense pain\nDeformity - the limb looks out of place\nSwelling, bruising, or tenderness around the injury\n Numbness and tingling\nProblems moving a limb\nYou need to get medical care right away for any fracture. An x-ray can tell if your bone is broken. You may need to wear a cast or splint. Sometimes you need surgery to put in plates, pins or screws to keep the bone in place.\nA fracture is a broken bone. It requires medical attention. If the broken bone is the result of major trauma or injury.The person is unresponsive, isn't breathing or isn't moving. Begin CPR if there's no breathing or heartbeat.\nThere is heavy bleeding.\nEven gentle pressure or movement causes pain.\nThe limb or joint appears deformed.\nThe bone has pierced the skin.\nThe extremity of the injured arm or leg, such as a toe or finger, is numb or bluish at the tip.\nYou suspect a bone is broken in the neck, head or back.\nStress fracture(chronic)\nStress fractures are tiny cracks in a bone. They're caused by repetitive force, often from overuse — such as repeatedly jumping up and down or running long distances. Stress fractures can also develop from normal use of a bone that's weakened by a condition such as osteoporosis.\nStress fractures are most common in the weight-bearing bones of the lower leg and foot. Track and field athletes and military recruits who carry heavy packs over long distances are at highest risk, but anyone can sustain a stress fracture. If you start a new exercise program, for example, you might develop stress fractures if you do too much too soon.\n\n\nCauses\nStress fractures often result from increasing the amount or intensity of an activity too quickly.\nBone adapts gradually to increased loads through remodeling, a normal process that speeds up when the load on the bone increases. During remodeling, bone tissue is destroyed (resorption), then rebuilt.\nBones subjected to unaccustomed force without enough time for recovery resorb cells faster than your body can replace them, which makes you more susceptible to stress fractures.\nBone strain (chronic)\nBroken Bones, Sprains, and Strains\nA broken bone requires emergency medical care. Your child might have a broken (fractured) bone if he or she heard or felt a bone snap, has difficulty moving the injured part, or if the injured part moves in an unnatural way or is very painful to the touch.\nA sprain occurs when the ligaments, which hold bones together, are overstretched and partially torn. A strain is when a muscle or tendon is overstretched or torn. Sprains and strains generally cause swelling and pain, and there may be bruises around the injured area. Most sprains and strains, after proper medical evaluation, can be treated at home. ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/black_background_without_image.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/image_with_white_backgroup.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/page_bottom.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/title_wiget.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/white_background_without_image.dart';

class BoneView extends StatefulWidget {
  @override
  _BoneViewState createState() => _BoneViewState();
}

class _BoneViewState extends State<BoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InjuryTitle(
            title: "BONE",
          ),
          ImageWithWhiteBackground(
            imgPath: AppImages.five,
            title: " Bone fracture (acute)",
            description:
                "A fracture is a break, usually in a bone. If the broken bone punctures the skin, it is called an open or compound fracture. Fractures commonly happen because of car accidents, or. Other causes are and, which cause weakening of the bones. Overuse can cause stress fractures, which are very small cracks in the bone.\n\nSymptoms of a fracture are\n⦁	Intense pain\n⦁	Deformity - the limb looks out of place\n⦁	Swelling, bruising, or tenderness around the injury\n⦁	Numbness and tingling\n⦁	Problems moving a limb\n\nYou need to get medical care right away for any fracture. An x-ray can tell if your bone is broken. You may need to wear a cast or splint. Sometimes you need surgery to put in plates, pins or screws to keep the bone in place.\n\nA fracture is a broken bone. It requires medical attention. If the broken bone is the result of major trauma or injury.The person is unresponsive, isn't breathing or isn't moving. Begin CPR if there's no breathing or heartbeat.\n\n⦁	There is heavy bleeding.\n⦁	Even gentle pressure or movement causes pain.\n⦁	The limb or joint appears deformed.\n⦁	The bone has pierced the skin.\n⦁	The extremity of the injured arm or leg, such as a toe or finger, is numb or bluish at the tip.\n⦁	You suspect a bone is broken in the neck, head or back.",
          ),
          BlackBackgroundWithoutImage(
              imgPath: '',
              title: "Stress fracture(chronic)",
              description:
                  "Stress fractures are tiny cracks in a bone. They're caused by repetitive force, often from overuse — such as repeatedly jumping up and down or running long distances. Stress fractures can also develop from normal use of a bone that's weakened by a condition such as osteoporosis.\n\nStress fractures are most common in the weight-bearing bones of the lower leg and foot. Track and field athletes and military recruits who carry heavy packs over long distances are at highest risk, but anyone can sustain a stress fracture. If you start a new exercise program, for example, you might develop stress fractures if you do too much too soon.\n\n\nCauses\n\nStress fractures often result from increasing the amount or intensity of an activity too quickly.\n\nBone adapts gradually to increased loads through remodeling, a normal process that speeds up when the load on the bone increases. During remodeling, bone tissue is destroyed (resorption), then rebuilt.\n\nBones subjected to unaccustomed force without enough time for recovery resorb cells faster than your body can replace them, which makes you more susceptible to stress fractures.",
              isImage: false),
          WhiteBackgroundWithoutImage(
              imgPath: '',
              title: "Bone strain (chronic)",
              description:
              "Broken Bones, Sprains, and Strains\n\nA broken bone requires emergency medical care. Your child might have a broken (fractured) bone if he or she heard or felt a bone snap, has difficulty moving the injured part, or if the injured part moves in an unnatural way or is very painful to the touch.\n\nA sprain occurs when the ligaments, which hold bones together, are overstretched and partially torn. A strain is when a muscle or tendon is overstretched or torn. Sprains and strains generally cause swelling and pain, and there may be bruises around the injured area. Most sprains and strains, after proper medical evaluation, can be treated at home.",
              isImage: false),
          PageBottom(),
        ],
      ),
    );
  }
}

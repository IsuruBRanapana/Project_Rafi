import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/black_background_without_image.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/page_bottom.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/title_wiget.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/white_background_without_image.dart';

class LigamentView extends StatefulWidget {
  @override
  _LigamentViewState createState() => _LigamentViewState();
}

class _LigamentViewState extends State<LigamentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InjuryTitle(
            title: "LIGAMENT",
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: "Sprain (acute)",
            description:
                "A sprain is a stretching or tearing of ligaments — the tough bands of fibrous tissue that connect two bones together in your joints. The most common location for a sprain is in your ankle.\n\nInitial treatment includes rest, ice, compression and elevation. Mild sprains can be successfully treated at home. Severe sprains sometimes require surgery to repair torn ligaments.\n\nThe difference between a sprain and a strain is that a sprain injures the bands of tissue that connect two bones together, while a strain involves an injury to a muscle or to the band of tissue that attaches a muscle to a bone.",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: AppImages.seven,
            title: "Symptoms",
            description:
            "Signs and symptoms will vary, depending on the severity of the injury, and may include:\n\n⦁	Pain\n⦁	Swelling\n⦁	Bruising\n⦁	Limited ability to move the affected joint\n⦁	Hearing or feeling a \"pop\" in your joint at the time of injury",
            isImage: true,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: "Inflammation (chronic)",
            description:
            "Inflammation refers to your body’s process of fighting against things that harm it, such as infections, injuries, and toxins, in an attempt to heal itself. When something damages your cells, your body releases chemicals that trigger a response from your .\n\nThis response includes the release of antibodies and proteins, as well as increased blood flow to the damaged area. The whole process usually lasts for a few hours or days in the case of acute inflammation.\n\nChronic inflammation happens when this response lingers, leaving your body in a constant state of alert. Over time, chronic inflammation may have a negative impact on your tissues and organs. Some  suggests that chronic inflammation could also play a role in a range of conditions, from cancer to asthma.\n\nRead on to learn more about chronic inflammation, including common causes and foods that fight it.",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: "Common symptoms of chronic inflammation include:",
            description:
            "\n⦁	fatigue\n⦁	fever\n⦁	mouth sores\n⦁	rashes\n⦁	abdominal pain\n⦁	chest pain",
            isImage: false,
          ),
          PageBottom(),
        ],
      ),
    );
  }
}

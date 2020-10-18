import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/black_background_without_image.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/page_bottom.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/title_wiget.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/white_background_without_image.dart';

class JointView extends StatefulWidget {
  @override
  _JointViewState createState() => _JointViewState();
}

class _JointViewState extends State<JointView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InjuryTitle(
            title: "JOINT",
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: 'Dislocation (acute)',
            description:
                "A dislocation is an injury to a joint — a place where two or more bones come together — in which the ends of your bones are forced from their normal positions. This painful injury temporarily deforms and immobilizes your joint.\n\nDislocation is most common in shoulders and fingers. Other sites include elbows, knees and hips. If you suspect a dislocation, seek prompt medical attention to return your bones to their proper positions.\n\nWhen treated properly, most dislocations return to normal function after several weeks of rest and rehabilitation. However, some joints, such as your shoulder, may have an increased risk of repeat dislocation.",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: 'Symptoms',
            description:
            "A dislocated joint can be:\n\n⦁	Visibly deformed or out of place\n\n⦁	Swollen or discolored\n\n⦁	Intensely painful\n\n⦁	Immovable",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: 'Causes',
            description:
            "Dislocations can occur in contact sports, such as football and hockey, and in sports in which falls are common, such as downhill skiing, gymnastics and volleyball. Basketball players and football players also commonly dislocate joints in their fingers and hands by accidentally striking the ball, the ground or another player.\n\nA hard blow to a joint during a motor vehicle accident and landing on an outstretched arm during a fall are other common causes.",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: 'Subluxation (acute)',
            description:
            "A joint subluxation is a partial dislocation of a joint. It is often the result of acute injury or  but can also be caused by medical conditions that undermine the integrity of ligaments. The treatment for subluxations may include resetting the joint, pain relief, rehabilitation therapy, and, in severe cases, surgery.",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: 'Symptoms',
            description:
            "As opposed to luxation (the complete dislocation of a joint), subluxations only result in the partial separation of a joint. Some of the common symptoms include:\n⦁	Pain and swelling around the joint\n⦁	A sensation of joint instability\n⦁	Limited mobility or the loss of \n⦁	Loss of feeling or numbness (usually temporary)\n⦁	Bruising",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: 'Synovitis (chronic)',
            description:
            "Synovitis (or synovial inflammation) is when the synovium of a joint becomes inflamed (swollen).\n\nThe synovium, which is also sometimes called the stratum synoviale or synovial stratum, is connective tissue that lines the inside of the joint capsule. A joint capsule, also called an articular capsule, is a bubble-like structure that surrounds joints such as the shoulder, elbow, wrist, hand, knee, foot and ankle. It is composed of a tough, outer layer called the fibrous stratum and a soft inside layer (the synovium). Contained inside both layers is synovial fluid, a viscous liquid that lubricates the joint to reduce friction on the articular cartilage during motion.",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: AppImages.six,
            title: 'Synovitis causes',
            description:
            "In an active, healthy person, the most common cause of synovitis is overuse of the joint, for example in athletes or people whose jobs involve repetitive stress movement such as lifting or squatting.\n\nHowever, synovitis is also common in people who have some form of inflammatory . In these patients, excessive growth of the synovium is part of an abnormal immune response, where the body misidentifies its own natural cartilage as a foreign substance that must be attacked.\n\nCartilage loss eventually damages the joint surface and leads to the stiffness and pain characteristic of all types of arthritis, the more common form of the arthritis, does not involve this type of inflammatory response.)",
            isImage: true,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: 'Osteoarthritis (chronic)',
            description:
            "Osteoarthritis is the most common form of arthritis, affecting millions of people worldwide. It occurs when the protective cartilage that cushions the ends of your bones wears down over time.\n\nAlthough osteoarthritis can damage any joint, the disorder most commonly affects joints in your hands, knees, hips and spine.\n\nOsteoarthritis symptoms can usually be managed, although the damage to joints can't be reversed. Staying active, maintaining a healthy weight and some treatments might slow progression of the disease and help improve pain and joint function.",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: 'Symptoms',
            description:
            "Osteoarthritis symptoms often develop slowly and worsen over time. Signs and symptoms of osteoarthritis include:\n\n⦁	Pain. Affected joints might hurt during or after movement.\n⦁	Stiffness. Joint stiffness might be most noticeable upon awakening or after being inactive.\n⦁	Tenderness. Your joint might feel tender when you apply light pressure to or near it.\n⦁	Loss of flexibility. You might not be able to move your joint through its full range of motion.\n⦁	Grating sensation. You might feel a grating sensation when you use the joint, and you might hear popping or crackling.\n⦁	Bone spurs. These extra bits of bone, which feel like hard lumps, can form around the affected joint.\n⦁	Swelling. This might be caused by soft tissue inflammation around the joint.",
            isImage: false,
          ),
          PageBottom(),
        ],
      ),
    );
  }
}

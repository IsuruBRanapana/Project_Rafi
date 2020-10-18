import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/black_background_without_image.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/image_with_black_background.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/page_bottom.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/title_wiget.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/white_background_without_image.dart';

class MuscleView extends StatefulWidget {
  @override
  _MuscleViewState createState() => _MuscleViewState();
}

class _MuscleViewState extends State<MuscleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InjuryTitle(
            title: "MUSCLE",
          ),
          WhiteBackgroundWithoutImage(
              imgPath: '',
              title: "Strain (strain)",
              description:
                  "People use the words “sprain” and “strain” almost interchangeably, to describe everything from a twisted to a pulled hamstring. But they’re not the same.\n\nA sprain is a stretch or tear in a ligament. Ligaments are bands of fibrous tissue that connect bones to bones at joints.\n\nA strain is also a stretch or tear, but it happens in a muscle or a tendon. Tendons link muscles to the bones.",
              isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: "How Do Sprains Happen?",
            description:
            "Sprains usually happen when a person falls, twists, or is hit in a way that forces the body out of its normal position.\n\nThe most common type of sprain is a . About 25,000 people sprain an ankle every day. Think of a runner who goes over a curb and catches their foot, twisting the ankle; or a baseball player who slides into a base and twists their .\n\nWrist and thumb sprains are also common, particularly in sports like skiing, where it’s not unusual to fall and land on an outstretched palm.",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: "How Do Sprains Happen?",
            description:
            "Athletes in contact sports, like football, hockey, and boxing, have the biggest chance of strains. Even in noncontact sports like tennis, golf, or rowing, doing the same motions over and over can lead to strains of the hand and forearm.\n\nThese injuries can happen when you work out at the gym, or they can happen at home or the workplace, especially if you do a lot of heavy lifting.\n\nThe worse the sprain or strain, the harder it is to use the affected area. Someone with a mild  may just favor that ankle slightly. A more severe ankle sprain may cause much more pain and make it tough or impossible to walk.\n\nIf you have a sprain, your doctor may mention its “grade”:\n\n    ⦁	 Grade I is stretching of the ligament or a very mild tear, with little or no instability at the joint.\n    ⦁	 Grade II is a more serious but still incomplete tear, with some looseness in the joint.\n    ⦁	 Grade III is a completely torn or ruptured ligament. This is not a broken bone, but can feel like one since it’s often impossible to put weight on the joint or use the affected limb because the joint isn’t stable.",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: "Cramp (acute)",
            description:
            "A muscle cramp is a sudden and involuntary contraction of one or more of your muscles. If you've ever been awakened in the night or stopped in your tracks by a sudden charley horse, you know that muscle cramps can cause severe pain. Though generally harmless, muscle cramps can make it temporarily impossible to use the affected muscle.\n\nLong periods of exercise or physical labor, particularly in hot weather, can lead to muscle cramps. Some medications and certain medical conditions also may cause muscle cramps. You usually can treat muscle cramps at home with self-care measures.",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: AppImages.eight,
            title: "Symptoms",
            description:
            "Most muscle cramps develop in the leg muscles, particularly in the calf. Besides the sudden, sharp pain, you might also feel or see a hard lump of muscle tissue beneath your skin.",
            isImage: true,
          ),
          BlackBackgroundWithoutImage(
            imgPath: AppImages.eight,
            title: "Symptoms",
            description:
            "Most muscle cramps develop in the leg muscles, particularly in the calf. Besides the sudden, sharp pain, you might also feel or see a hard lump of muscle tissue beneath your skin.",
            isImage: true,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: "These steps may help prevent cramps:",
            description:
            "\n\n⦁	Avoid dehydration. Drink plenty of liquids every day. The amount depends on what you eat, your sex, your level of activity, the weather, your health, your age and medications you take. Fluids help your muscles contract and relax and keep muscle cells hydrated and less irritable. During activity, replenish fluids at regular intervals, and continue drinking water or other fluids after you're finished.\n\n⦁	Stretch your muscles. Stretch before and after you use any muscle for an extended period. If you tend to have leg cramps at night, stretch before bedtime. Light exercise, such as riding a stationary bicycle for a few minutes before bedtime, also may help prevent cramps while you're sleeping.",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: "Symptoms",
            description:
            "The signs and symptoms associated with chronic exertional compartment syndrome can include:\n\n⦁	Aching, burning or cramping pain in a specific area (compartment) of the affected limb — usually the lower leg\n⦁	Tightness in the affected limb\n⦁	Numbness or tingling in the affected limb\n⦁	Weakness of the affected limb\n⦁	Foot drop, in severe cases, if legs are affected\n⦁	Often occurs in the same compartment of both legs\n⦁	Occasionally, swelling or bulging as a result of a muscle hernia\n\nPain caused by chronic exertional compartment syndrome typically follows this pattern:\n\n⦁	Begins consistently after a certain time, distance or intensity of exertion after you start exercising the affected limb\n⦁	Progressively worsens as you exercise\n⦁	Becomes less intense or stops completely within 15 minutes of stopping the activity\n⦁	Over time, recovery time after exercise may increase\n\n\nTaking a complete break from exercise or performing only low-impact activity might relieve your symptoms, but usually only temporarily. Once you take up running again, for instance, those familiar symptoms usually come back",
            isImage: false,
          ),
          ImageWithBlackBackground(
            imgPath: AppImages.eight,
            title: "Delayed onset muscle soreness (DOMS)(chronic)",
            description:
            "Delayed-onset muscle soreness (DOMS) is muscle pain that begins after you’ve worked out. It normally starts a day or two after a workout. You won’t feel DOMS during a workout.\nPain felt during or immediately after a workout is a different kind of muscle soreness. It’s called acute muscle soreness.\nAcute muscle soreness is that burning sensation you feel in a muscle during a workout due to a quick buildup of . It usually disappears as soon as or shortly after you stop exercising.\nRead on to learn more about DOMS, including symptoms, causes, treatment, and more.\n\n\nSymptoms of DOMS to watch out for may include:\n\n⦁	muscles that feel tender to the touch\n⦁	reduced range of motion due to pain and stiffness when moving\n⦁	swelling in the affected muscles\n⦁	muscle fatigue\n⦁	short-term loss of muscle strength",
          ),
          PageBottom(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class MuscleView extends StatefulWidget {
  @override
  _MuscleViewState createState() => _MuscleViewState();
}

class _MuscleViewState extends State<MuscleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muscle Injury'),
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
                AppImages.eight,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Strain (strain)\nPeople use the words “sprain” and “strain” almost interchangeably, to describe everything from a twisted to a pulled hamstring. But they’re not the same.\nA sprain is a stretch or tear in a ligament. Ligaments are bands of fibrous tissue that connect bones to bones at joints.\nA strain is also a stretch or tear, but it happens in a muscle or a tendon. Tendons link muscles to the bones.\nHow Do Sprains Happen?\nSprains usually happen when a person falls, twists, or is hit in a way that forces the body out of its normal position.\nThe most common type of sprain is a . About 25,000 people sprain an ankle every day. Think of a runner who goes over a curb and catches their foot, twisting the ankle; or a baseball player who slides into a base and twists their .\nWrist and thumb sprains are also common, particularly in sports like skiing, where it’s not unusual to fall and land on an outstretched palm.\nHow Do Strains Happen?\nAthletes in contact sports, like football, hockey, and boxing, have the biggest chance of strains. Even in noncontact sports like tennis, golf, or rowing, doing the same motions over and over can lead to strains of the hand and forearm.\nThese injuries can happen when you work out at the gym, or they can happen at home or the workplace, especially if you do a lot of heavy lifting.\nThe worse the sprain or strain, the harder it is to use the affected area. Someone with a mild  may just favor that ankle slightly. A more severe ankle sprain may cause much more pain and make it tough or impossible to walk.\nIf you have a sprain, your doctor may mention its “grade”:\nGrade I is stretching of the ligament or a very mild tear, with little or no instability at the joint.\nGrade II is a more serious but still incomplete tear, with some looseness in the joint.\nGrade III is a completely torn or ruptured ligament. This is not a broken bone, but can feel like one since it’s often impossible to put weight on the joint or use the affected limb because the joint isn’t stable.\n\n\nCramp (acute)\nA muscle cramp is a sudden and involuntary contraction of one or more of your muscles. If you've ever been awakened in the night or stopped in your tracks by a sudden charley horse, you know that muscle cramps can cause severe pain. Though generally harmless, muscle cramps can make it temporarily impossible to use the affected muscle.\nLong periods of exercise or physical labor, particularly in hot weather, can lead to muscle cramps. Some medications and certain medical conditions also may cause muscle cramps. You usually can treat muscle cramps at home with self-care measures.\n\nSymptoms\nMost muscle cramps develop in the leg muscles, particularly in the calf. Besides the sudden, sharp pain, you might also feel or see a hard lump of muscle tissue beneath your skin. ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "These steps may help prevent cramps:\nAvoid dehydration. Drink plenty of liquids every day. The amount depends on what you eat, your sex, your level of activity, the weather, your health, your age and medications you take. Fluids help your muscles contract and relax and keep muscle cells hydrated and less irritable. During activity, replenish fluids at regular intervals, and continue drinking water or other fluids after you're finished.\nStretch your muscles. Stretch before and after you use any muscle for an extended period. If you tend to have leg cramps at night, stretch before bedtime. Light exercise, such as riding a stationary bicycle for a few minutes before bedtime, also may help prevent cramps while you're sleeping.\n\n\nCompartment syndrome (chronic)\nChronic exertional compartment syndrome is an exercise-induced muscle and nerve condition that causes pain, swelling and sometimes disability in the affected muscles of the legs or arms. Anyone can develop the condition, but it's more common in young adult runners and athletes who participate in activities that involve repetitive impact.\nChronic exertional compartment syndrome may respond to nonoperative treatment and activity modification. If nonoperative treatment doesn't help, your doctor might recommend surgery. Surgery is successful for many people and might allow you to return to your sport.\n\nSymptoms\nThe signs and symptoms associated with chronic exertional compartment syndrome can include:\nAching, burning or cramping pain in a specific area (compartment) of the affected limb — usually the lower leg\nTightness in the affected limb\nNumbness or tingling in the affected limb\nWeakness of the affected limb\nFoot drop, in severe cases, if legs are affected\nOften occurs in the same compartment of both legs\nOccasionally, swelling or bulging as a result of a muscle hernia\nPain caused by chronic exertional compartment syndrome typically follows this pattern:\nBegins consistently after a certain time, distance or intensity of exertion after you start exercising the affected limb\nProgressively worsens as you exercise\nBecomes less intense or stops completely within 15 minutes of stopping the activity\nOver time, recovery time after exercise may increase\nTaking a complete break from exercise or performing only low-impact activity might relieve your symptoms, but usually only temporarily. Once you take up running again, for instance, those familiar symptoms usually come back\nDelayed onset muscle soreness (DOMS)(chronic)\nDelayed-onset muscle soreness (DOMS) is muscle pain that begins after you’ve worked out. It normally starts a day or two after a workout. You won’t feel DOMS during a workout.\nPain felt during or immediately after a workout is a different kind of muscle soreness. It’s called acute muscle soreness.\nAcute muscle soreness is that burning sensation you feel in a muscle during a workout due to a quick buildup of . It usually disappears as soon as or shortly after you stop exercising.\nRead on to learn more about DOMS, including symptoms, causes, treatment, and more.\nSymptoms of DOMS to watch out for may include:\nmuscles that feel tender to the touch\nreduced range of motion due to pain and stiffness when moving\nswelling in the affected muscles\nmuscle fatigue\nshort-term loss of muscle strength",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

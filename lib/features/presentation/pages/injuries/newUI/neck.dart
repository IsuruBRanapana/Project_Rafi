import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class NeckView extends StatefulWidget {
  @override
  _NeckViewState createState() => _NeckViewState();
}

class _NeckViewState extends State<NeckView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neck Injury'),
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
        padding: const EdgeInsets.only(left:8.0,right: 8),
        child: ListView(
          children: [
            // Container(
            //   child: Text(
            //     'Steroid injection ',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            // ),
            // SizedBox(
            //   height: AppConstants.adaptiveScreen.setHeight(20),
            // ),
            Container(
              child: Text(
                "Most people will have a minor neck problem at one time or another. Our body movements usually do not cause problems, but it's not surprising that symptoms develop from everyday wear and tear, overuse, or injury. Neck problems and injuries most commonly occur during sports or recreational activities, work-related tasks, or projects around the home.\nNeck pain may feel like a \"kink,\" stiffness, or severe pain. Pain may spread to the shoulders, upper back, or arms, or it may cause a headache. Neck movement may be limited, usually more to one side than the other. Neck pain refers to pain anywhere from the area at the base of the skull into the shoulders. The neck includes:\nThe bones and joints of the cervical spine (of the neck).\nThe  that separate the cervical vertebrae and absorb shock as you move.\nThe muscles and  in the neck that hold the cervical spine together.\nNeck pain may be caused by an injury to one or more of these areas, or it may have another cause. Home treatment will often help relieve neck pain caused by minor injuries.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Symptoms ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            //todo:add image
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Signs and symptoms include:\nPain that's often worsened by holding your head in one place for long periods, such as when driving or working at a computer\nMuscle tightness and spasms\nDecreased ability to move your head\nHeadache ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'When to see a doctor ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Most neck pain improves gradually with home treatment. If not, see your doctor.\nSeek immediate care if severe neck pain results from an injury, such as a motor vehicle accident, diving accident or fall.\nContact a doctor if your neck pain:\nIs severe\nPersists for several days without relief\nSpreads down arms or legs\nIs accompanied by headache, numbness, weakness or tingling",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Causes ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Your neck is flexible and supports the weight of your head, so it can be vulnerable to injuries and conditions that cause pain and restrict motion. Neck pain causes include:\nMuscle strains. Overuse, such as too many hours hunched over your computer or smartphone, often triggers muscle strains. Even minor things, such as reading in bed or gritting your teeth, can strain neck muscles.\nWorn joints. Just like the other joints in your body, your neck joints tend to wear down with age. Osteoarthritis causes the cushions (cartilage) between your bones (vertebrae) to deteriorate. Your body then forms bone spurs that affect joint motion and cause pain.\nNerve compression. Herniated disks or bone spurs in the vertebrae of your neck can press on the nerves branching out from the spinal cord.\nInjuries. Rear-end auto collisions often result in whiplash injury, which occurs when the head is jerked backward and then forward, straining the soft tissues of the neck.\nDiseases. Certain diseases, such as rheumatoid arthritis, meningitis or cancer, can cause neck pain. ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Prevention ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Most neck pain is associated with poor posture combined with age-related wear and tear. To help prevent neck pain, keep your head centered over your spine. Some simple changes in your daily routine may help. Consider trying to:\nUse good posture. When standing and sitting, be sure your shoulders are in a straight line over your hips and your ears are directly over your shoulders.\nTake frequent breaks. If you travel long distances or work long hours at your computer, get up, move around and stretch your neck and shoulders.\nAdjust your desk, chair and computer so that the monitor is at eye level. Knees should be slightly lower than hips. Use your chair's armrests.\nAvoid tucking the phone between your ear and shoulder when you talk. Use a headset or speakerphone instead.\nIf you smoke, quit. Smoking can put you at higher risk of developing neck pain.\nAvoid carrying heavy bags with straps over your shoulder. The weight can strain your neck.\nSleep in a good position. Your head and neck should be aligned with your body. Use a small pillow under your neck. Try sleeping on your back with your thighs elevated on pillows, which will flatten your spinal muscles.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
          ],
        ),
      ),
    );
  }
}

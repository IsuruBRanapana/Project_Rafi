import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/black_background_without_image.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/image_with_white_backgroup.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/page_bottom.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/title_wiget.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/white_background_without_image.dart';

class NeckView extends StatefulWidget {
  @override
  _NeckViewState createState() => _NeckViewState();
}

class _NeckViewState extends State<NeckView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InjuryTitle(
            title: "NECK INJURY",
          ),
          ImageWithWhiteBackground(
            imgPath: AppImages.neck1,
            title: "",
            description:
                "Most people will have a minor neck problem at one time or another. Our body movements usually do not cause problems, but it's not surprising that symptoms develop from everyday wear and tear, overuse, or injury. Neck problems and injuries most commonly occur during sports or recreational activities, work-related tasks, or projects around the home.\nNeck pain may feel like a \"kink,\" stiffness, or severe pain. Pain may spread to the shoulders, upper back, or arms, or it may cause a headache. Neck movement may be limited, usually more to one side than the other. Neck pain refers to pain anywhere from the area at the base of the skull into the shoulders. The neck includes:\n\n⦁	The bones and joints of the cervical spine (of the neck).\n⦁	The  that separate the cervical vertebrae and absorb shock as you move.\n⦁	The muscles and  in the neck that hold the cervical spine together.\n\nNeck pain may be caused by an injury to one or more of these areas, or it may have another cause. Home treatment will often help relieve neck pain caused by minor injuries.",
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: "Symptoms",
            description:
                "Signs and symptoms include:\n⦁	Pain that's often worsened by holding your head in one place for long periods, such as when driving or working at a computer\n⦁	Muscle tightness and spasms\n⦁	Decreased ability to move your head\n⦁	Headache",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: "When to see a doctor",
            description:
            "Most neck pain improves gradually with home treatment. If not, see your doctor.\n\nSeek immediate care if severe neck pain results from an injury, such as a motor vehicle accident, diving accident or fall.\n\nContact a doctor if your neck pain:\n⦁	Is severe\n⦁	Persists for several days without relief\n⦁	Spreads down arms or legs\n⦁	Is accompanied by headache, numbness, weakness or tingling",
            isImage: false,
          ),
          BlackBackgroundWithoutImage(
            imgPath: '',
            title: "Causes",
            description:
            "Your neck is flexible and supports the weight of your head, so it can be vulnerable to injuries and conditions that cause pain and restrict motion. Neck pain causes include:\n\n⦁	Muscle strains. Overuse, such as too many hours hunched over your computer or smartphone, often triggers muscle strains. Even minor things, such as reading in bed or gritting your teeth, can strain neck muscles.\n\n⦁	Worn joints. Just like the other joints in your body, your neck joints tend to wear down with age. Osteoarthritis causes the cushions (cartilage) between your bones (vertebrae) to deteriorate. Your body then forms bone spurs that affect joint motion and cause pain.\n\n⦁	Nerve compression. Herniated disks or bone spurs in the vertebrae of your neck can press on the nerves branching out from the spinal cord.\n\n⦁	Injuries. Rear-end auto collisions often result in whiplash injury, which occurs when the head is jerked backward and then forward, straining the soft tissues of the neck.\n\n⦁	Diseases. Certain diseases, such as rheumatoid arthritis, meningitis or cancer, can cause neck pain.",
            isImage: false,
          ),
          WhiteBackgroundWithoutImage(
            imgPath: '',
            title: "Prevention",
            description:
            "Most neck pain is associated with poor posture combined with age-related wear and tear. To help prevent neck pain, keep your head centered over your spine. Some simple changes in your daily routine may help. Consider trying to:\n\n⦁	Use good posture. When standing and sitting, be sure your shoulders are in a straight line over your hips and your ears are directly over your shoulders.\n⦁	Take frequent breaks. If you travel long distances or work long hours at your computer, get up, move around and stretch your neck and shoulders.\n⦁	Adjust your desk, chair and computer so that the monitor is at eye level. Knees should be slightly lower than hips. Use your chair's armrests.\n⦁	Avoid tucking the phone between your ear and shoulder when you talk. Use a headset or speakerphone instead.\n⦁	If you smoke, quit. Smoking can put you at higher risk of developing neck pain.\n⦁	Avoid carrying heavy bags with straps over your shoulder. The weight can strain your neck.\n⦁	Sleep in a good position. Your head and neck should be aligned with your body. Use a small pillow under your neck. Try sleeping on your back with your thighs elevated on pillows, which will flatten your spinal muscles.",
            isImage: false,
          ),
          PageBottom(),
        ],
      ),
    );
  }
}

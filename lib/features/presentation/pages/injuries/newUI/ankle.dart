import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/black_background_without_image.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/image_with_black_background.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/image_with_white_backgroup.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/page_bottom.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/title_wiget.dart';
import 'package:project_rafi/features/presentation/pages/injuries/newUI/widget/white_background_without_image.dart';

class AnkleView extends StatefulWidget {
  @override
  _AnkleViewState createState() => _AnkleViewState();
}

class _AnkleViewState extends State<AnkleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InjuryTitle(
            title: "ANKLE",
          ),
          ImageWithWhiteBackground(
            title: "ANKLE INJURY",
            imgPath: AppImages.ankle,
            description:
                "The ankle injury is one of the most common injury of baseball players. This injury accounts  of time-loss injuries and can result in significant “downtime” from baseball Remember that without healthy ankles there is no chance to play good baseball and I bet you want to play good.\n\n\nTypes of common baseball ankle injuries\n\n⦁	Ankle sprain\n⦁	Acute Lateral Ankle Sprain\n⦁	Chronic Lateral Ankle Sprain\n⦁	Ankle ligament damage\n⦁	Broken ankle",
          ),
          ImageWithBlackBackground(
            imgPath: AppImages.ankle1,
            title: "ANKLE SPRAIN(ACUTES)",
            description:
                "A sprained ankle is one of the most common form of ankle injuries sustained and something which all of us are likely to experience at some stage. The sprain itself occurs where mild damage is sustained to the ligaments within the joint resulting in pain, inflammation and reduced mobility.\n\n\nIt is largely a self-limiting condition and following a few days of rest you should be able to carry on with weight bearing activities once again. A compression based ankle support can also help with the management of inflammation should it be required.\n\n\nAnkle sprains usually occur at the baseball when a player running or sliding.",
          ),
          ImageWithWhiteBackground(
            title: "Acute lateral ankle sprain",
            imgPath: AppImages.ankle2,
            description:
                "This is the most common athletic injury accounting in some sports. 85% of all ankle injuries are of the \"inversion type\" (turning the ankle inward). It is the lateral or outer ligaments of the ankle that are injured.",
          ),
          BlackBackgroundWithoutImage(
              imgPath: '',
              title: "Chronic lateral ankle sprain",
              description:
                  "This is a direct result of recurrent ankle sprains associated with frequent pain, swelling and ankle \"giving out\".\n\n\nSymptoms of ankle sprains\n• Tenderness and swelling along injured ligament\n• Discoloration to ankle or foot area\n• Difficulty bearing weight due to pain\n• tenderness.\n• bruising.\n• pain.\n• inability to put weight on the affected ankle.\n• skin discoloration.\n• stiffness.",
              isImage: false),
          WhiteBackgroundWithoutImage(
            isImage: false,
            imgPath: '',
            title: "First aid for ankle sprains",
            description:
                "1. Rest the injured limb. Your doctor may recommend not putting any weight on the injured area for 48 to 72 hours, so you may need to use crutches. A splint or brace also may be helpful initially. But don't avoid all activity. Even with an ankle sprain, you can usually still exercise other muscles to minimize deconditioning. For example, you can use an exercise bicycle with arm exercise handles, working both your arms and the uninjured leg while resting the injured ankle on another part of the bike. That way you still get three-limb exercise to keep up your cardiovascular conditioning.\n\n2. Ice the area. Use a cold pack, a slush bath or a compression sleeve filled with cold water to help limit swelling after an injury. Try to ice the area as soon as possible after the injury and continue to ice it for 15 to 20 minutes, four to eight times a day, for the first 48 hours or until swelling improves. If you use ice, be careful not to use it too long, as this could cause tissue damage.\n\n3. Compress the area with an elastic wrap or bandage. Compressive wraps or sleeves made from elastic or neoprene are best.\n\n4. Elevate the injured limb above your heart whenever possible to help prevent or limit swelling.",
          ),
          BlackBackgroundWithoutImage(
              imgPath: '',
              title: "How to diagnosis ankle sprain",
              description:
                  "• X-ray. During an X-ray, a small amount of radiation passes through your body to produce images of the bones of the ankle. This test is good for ruling out bone fractures.\n\n• Magnetic resonance imaging (MRI). MRIs use radio waves and a strong magnetic field to produce detailed cross-sectional or 3-D images of soft internal structures of the ankle, including ligaments.\n\n• CT scan. CT scans can reveal more detail about the bones of the joint. CT scans take X-rays from many different angles and combine them to make cross-sectional or 3-D images.\n\n• Ultrasound. An ultrasound uses sound waves to produce real-time images. These images may help your doctor judge the condition of a ligament or tendon when the foot is in different positions.\n\nMedication\nIn most cases, over-the-counter pain relievers — such as ibuprofen (Advil, Motrin IB, others) or naproxen sodium (Aleve, others) or acetaminophen (Tylenol, others) — are enough to manage the pain of a sprained ankle.",
              isImage: false),
          WhiteBackgroundWithoutImage(
            isImage: false,
            imgPath: '',
            title: "Devices",
            description:
                "Because walking with a sprained ankle might be painful, you may need to use crutches until the pain subsides. Depending on the severity of the sprain, your doctor may recommend an elastic bandage, sports tape or an ankle support brace to stabilize the ankle. In the case of a severe sprain, a cast or walking boot may be necessary to immobilize the ankle while the tendon heals.",
          ),
          BlackBackgroundWithoutImage(
              imgPath: '',
              title: "Therapy",
              description:
                  "Once the swelling and pain is lessened enough to resume movement, your doctor will ask you to begin a series of exercises to restore your ankle's range of motion, strength, flexibility and stability. Your doctor or a physical therapist will explain the appropriate method and progression of exercises. Balance and stability training is especially important to retrain the ankle muscles to work together to support the joint and to help prevent recurrent sprains. These exercises may involve various degrees of balance challenge, such as standing on one leg. If you sprained your ankle while exercising or participating in a sport, talk to your doctor about when you can resume your activity. Your doctor or physical therapist may want you to perform particular activity and movement tests to determine how well your ankle functions for the sports you play.",
              isImage: false),
          WhiteBackgroundWithoutImage(
            isImage: false,
            imgPath: '',
            title: "Surgery",
            description:
                "In rare cases, surgery is performed when the injury doesn't heal or the ankle remains unstable after a long period of physical therapy and rehabilitative exercise. Surgery may be performed to:\n\n• Repair a ligament that won't heal\n• Reconstruct a ligament with tissue from a nearby ligament or tendon",
          ),
          BlackBackgroundWithoutImage(
              imgPath: '',
              title: "Ankle ligament damage",
              description:
                  "Following a serious sprain or fall the ligaments within the joint may become ruptured or torn, leading to a lengthier spell on the sidelines. In more serious cases surgery may be required in order to repair the damaged ligaments, which are the tough bands of tissue connecting the bones within the joint and responsible for its overall stability.\n\nA ligament based ankle support may also be used as part of rehabilitation, with the external strapping acting as a ligament in order to support the joint and keep you mobile. It is essential to strengthen the joint in order to minimise the risk of injuries in the future.",
              isImage: false),
          ImageWithWhiteBackground(
              imgPath: AppImages.ankle1,
              title: "Symptoms of ankle ligament damage",
              description:
                  "• pain\n• tenderness\n• swelling\n• skin discolaration\n• inability to put weight on the affected ankle\n• stiffnes\n• bruising"),
          BlackBackgroundWithoutImage(
              imgPath: '',
              title: "First aid",
              description:
                  "1. Rest the leg. The patient should stop the activity that caused the injury. Help her to sit down and rest the ankle. Support it in a raised position.\n\n2. Cool with ice. Cool the ankle to reduce pain and swelling. Ideally wrap a bag of ice or frozen peas in a cloth and place it on the ankle. Do not put ice straight onto the skin, as it will cause a cold burn. Leave the ice in place for about 20 minutes.\n\n3. Apply pressure. Leave the compress in place if it is small or wrap a layer of soft padding, such as a roll of cotton wool, around the ankle. Apply pressure with a compression support or compression bandage to help limit swelling. This should extend from the toes to the knee.\n\n4. Elevate the ankle. Raise and support the ankle so that it is higher than the hip to prevent swelling. Advise the patient to rest the ankle. If you suspect serious injury, take the patient to the hospital.\n\n5. Check circulation. Make sure that the bandage is not too tight. Press on a toenail until it turns white, then let go. The color should return quickly. If it does not return, the bandage is too tight; remove it and reapply. Recheck every 10 minutes.",
              isImage: false),
          WhiteBackgroundWithoutImage(
              imgPath: '',
              title: "Broken ankle",
              description:
                  "This is obviously the most serious of ankle injuries and can require surgery in order to reset the bone followed by casting of the use of a walker boot to help protect the ankle and allow it to heal properly. Following this initial treatment phase a rigid ankle support may be used, to help minimize the risk of the ankle rolling, in conjunction with physiotherapy to help strengthen the joint once again. If you are unsure as to the severity of an injury and the conditions fails to improve following a few days of rest then you should seek a professional diagnosis.\n\n\nSymptoms of broken ankle\n\n• Immediate, throbbing pain.\n• Pain that increases with activity and decreases with rest.\n• Swelling.\n• Bruising.\n• Tenderness.\n• Deformity.\n• Difficulty in walking or bearing weight.",
              isImage: false),
          ImageWithBlackBackground(
              imgPath: AppImages.ankle3,
              title: "First aid for broken ankle",
              description:
                  "Safety first, Make sure the patient is in a safe location. It is more important to worry about rescuer and patient ongoing safety than to worry about one broken ankle.\n\n1. Check ABC. Make sure the patient has an Airway, is Breathing, and has Circulation.\n2. Control bleeding.\n3. Look for other injuries. If a patient shows signs of injury to the head, neck, or back, DO NOT move the patient.\n4. Cover any broken skin with sterile dressings. If needed, the wound can be rinsed -- try to use sterile water or saline solution. Open wounds may require stitches.\n5. If an ambulance is responding, have the patient remain still and wait for the ambulance. Proceed to step 10 (ice on the break).\n6. If an ambulance is unavailable, it may be necessary to splint the broken ankle before splinting, check circulation, sensation, and motion.\n\n    1.Check circulation by comparing the color and temperature of the injured ankle against the uninjured ankle.\n    2.Check sensation by asking the patient which toe you are touching.\n    3.Check motion by having the patient wiggle his or her toes.\n\n7. To splint a broken ankle, . You can also fashion a . Be sure to immobilize the foot and shin area as well. Any movement will result in pressure on the ankle. Do not wrap the ankle too tight.\n\n    1.After splinting, recheck circulation, sensation, and motion.\n    2.Put an on the break to reduce swelling. Put a sheet or towel between the ice and the skin to prevent frostbite. Leave ice on for 15 minutes, then remove ice for 15 minutes.",
              ),
          WhiteBackgroundWithoutImage(
              imgPath: '',
              title: "Proposed treatment",
              description:
                  "\n\n• Pain management – NSAIDs, non-steroidal anti-inflammatory drugs, can help reduce pain and swelling of a broken ankle.\n• Physical therapy – Once it’s recommended by your physician, physical therapy keeps your ankle moving and helps you build up muscle support around the break.\n• Ankle supports – Whether or not your ankle is treated surgically, your doctor may recommend wearing an ankle brace for up to a few months after the injury is healed.\n• Surgery",
              isImage: false),
          PageBottom(),
        ],
      ),
    );
  }
}

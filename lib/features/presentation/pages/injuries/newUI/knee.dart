import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class KneeView extends StatefulWidget {
  @override
  _KneeViewState createState() => _KneeViewState();
}

class _KneeViewState extends State<KneeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Knee Injury'),
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
        padding: EdgeInsets.only(left: 8, right: 8),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                AppImages.four,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            // Container(
            //   child: Text(
            //     'Symptoms ',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            // ),
            // SizedBox(
            //   height: AppConstants.adaptiveScreen.setHeight(20),
            // ),
            Container(
              child: Text(
                "Three bones meet to form your knee joint: your thighbone (femur), shinbone (tibia), and kneecap (patella). Your kneecap sits in front of the joint to provide some protection. Bones are connected to other bones by ligaments. There are four primary ligaments in your knee. They act like strong ropes to hold the bones together and keep your knee stable. .The thing about volleyball is that the game can be played anywhere one can put up a net. People play volleyball on the beach, in the park, or in the gym. Athletes young and old play this game.\n\nKnee injuries frequently occur in volleyball players because they are always jumping or colliding with other players. Some people sustain knee injuries participating in high school volleyball and other people play well into their life before they twist their knee in a bad way.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Anterior cruciate ligament ACL (chronic)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "One of the most common knee injuries is an anterior cruciate ligament sprain or tear. Athletes who participate in high demand sports like, soccer, football, and basketball and baseball are more likely to injure their anterior cruciate ligaments. If you have injured your anterior cruciate ligament, you may require surgery to regain full function of your knee. This will depend on several factors, such as the severity of your injury and your activity level.\n\n\nThree bones meet to form your knee joint: your thighbone (femur), shinbone (tibia), and kneecap (patella). Your kneecap sits in front of the joint to provide some protection. Bones are connected to other bones by ligaments. There are four primary ligaments in your knee. They act like strong ropes to hold the bones together and keep your kn These are found on the sides of your knee. The medial collateral ligament is on the inside and the lateral collateral ligament is on the outside. They control the sideways motion of your knee and brace it against unusual movement.ee stable.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "HOW CAN BE INJURED ACL\n\n• Changing direction rapidly\n• Stopping suddenly\n• Slowing down while running\n• Landing from a jump incorrectly\n• Direct contact or collision, such as an accident\n\n\nSYMPTOMPS OF ACL\n\n\nWhen you injure your anterior cruciate ligament, you might hear a \"popping\" noise and you may feel your knee give out from under you. Other typical symptoms include:\n\n• Pain with swelling. Within 24 hours, your knee will swell. If ignored, the swelling and pain may resolve on its own. However, if you attempt to return to sports, your knee will probably be unstable and you risk causing further damage to the cushioning cartilage (meniscus) of your knee.\n• Loss of full range of motion\n• Tenderness along the joint line\n• Discomfort while walking\n• Feeling or hearing a pop in the knee at the time of injury.\n• Pain on the outside and back of the knee.\n• The knee swelling within the first few hours of the injury. This may be a sign of bleeding inside the knee joint. Swelling that occurs suddenly is usually a sign of a serious knee injury.\n• Limited knee movement because of pain or swelling or both.\nThe main symptom of chronic ACL deficiency is the knee buckling or giving out, sometimes with pain and swelling. This can happen when an ACL injury is not treated.\n\n\nFIRST AID\n\n\nStart first aid right away. These first-aid tips will reduce swelling and pain. Use the RICE method. The letters stand for Rest the knee, put Ice on it, use an elastic bandage to give gentle Compression to the knee, and Elevate the leg by propping it up above the level of your heart. And at first it's also important to move your leg as little as possible.\n\nTake over-the-counter pain medicine. Be safe with medicines. Read and follow all instructions on the label.\n\nYou may need to walk with crutches and use a knee immobilizer to keep your knee still for the first few days after the injury.\n\nPROPOSTE TREATMENTS\n\n\nYour knee will need to be checked by your doctor. It's important to get treatment. If you don't, the injury may become a long-lasting problem. There are two ways to treat the injury.\n\n• Exercises and training, also called rehab. It takes several months of rehab for your knee to get better.\n• Surgery. You and your doctor can decide if rehab is enough or if surgery is right for you.\n\n\nIf you have surgery, you will also have several months of rehab afterward.\nYour treatment will depend on how much of the ACL is torn, whether other parts of the knee are injured, how active you are, your age, your overall health, and how long ago the injury occurred.\n\nThere are three main treatment goals:\n\n• Make the knee stable if it is unsteady, or at least make it stable enough to do your daily activities.\n• Make your knee strong enough to do all the activities you used to do.\n• Reduce the chance that your knee will be damaged more.\nHOW TO PRVENT ACL\n\n\n1. Stretch and warm-up before playing.\n2. Eat a balanced diet and drink plenty of water.\n3. Keep up your cardiovascular fitness and core strength.\n4. Get enough rest. ...\n5. Practice good technique. ...\n6. Treat injuries as they occur and allow your body to completely recover before heading back out on the court.\n\n\nMedial collateral ligament MCL (chronic)Shape\n\nAn MCL injury is a sprain or tear to the medial collateral ligament. The MCL is a band of tissue on the inside of your knee. It connects your thighbone to the bone of your lower leg. The MCL keeps the knee from bending inward. You can hurt your MCL during activities that involve bending, twisting, or a quick change of direction. For example, the MCL can be injured in football or soccer when the outside of the knee is hit. This type of injury can also occur during skiing and in other sports with lots of stop-and-go movements, jumping, or weaving. Medial Collateral Ligament tear is a simple sprain that occurs frequently in volleyball players. These volleyball knee injuries heal in 4-8 weeks and do not require prolonged bracing or surgery.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Causes of MCL injury\nWhen your outer knee is hit very hard, the MCL, which runs along your inner knee, can stretch out far enough to strain or tear. People who play football, hockey, and other sports where players impact other athletes with great force may injure their MCL this way.\nYou may also stretch or tear your MCL if your knee is suddenly pushed to the side, or if it twists or bends out too far.\nShape\nSymptoms MCL\n\n1. A popping sound upon injury\n2.pain and tenderness along the inner part of your knee.\n3. Swelling of the knee joint.\n4. A feeling that your knee is going to give out when you put weight on it.\n5. Locking or catching in the knee joint.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Proposed treatment\n\n1. Reduce pain and inflammation.\n2. Normalize joint range of motion.\n3. Strengthen your knee: esp quadriceps (esp VMO) and hamstrings.\n4. Strengthen your lower limb: calves, hip and pelvis muscles.\n5. Improve patellofemoral (knee cap) alignment\n6. Normalize your muscle lengths\n7. Improve your proprioception, agility and balance\n8. Improve your technique and function eg walking, running, squatting, hopping and landing.\n9. Guide return to sport activities and exercises\n10. Minimize your chance of re-injury.\n\n\nHow to prevent MCL\n\n• Use proper strength training techniques for the lower back, shoulders, and legs by working with an athletic trainer or other sports medicine professional\n• Use an external knee support, such as an knee brace or taping, to prevent the knee from rolling over\n• Minimize the amount of jump training on hard surfaces\n• Warm up muscles with stretching and light aerobic exercises\n• Be sure to properly cool down after practice\n• If you are having significant pain, visit your doctor and follow instructions for treatment\n• Speak with a sports medicine professional or athletic trainer if you have any concerns about injuries or prevention strategies\n• The athlete should return to play only when clearance is granted by a health care professional\n\nMeniscal tear\n\nThree bones meet to form your knee joint: your thighbone (femur), shinbone (tibia), and kneecap (patella). Two wedge-shaped pieces of cartilage act as \"shock absorbers\" between your thighbone and shinbone. These are called meniscus.\nThey are tough and rubbery to help cushion the joint and keep it stable. Menisci tear in different ways. Tears are noted by how they look, as well as where the tear occurs in the meniscus. Common tears include bucket handle, flap, and radial. Sports-related meniscus tears often occur along with other knee injuries, such as anterior cruciate ligament tears.\nSudden meniscus tears often happen during sports. Players may squat and twist the knee, causing a tear. Direct contact, like a tackle, is sometimes involved.\nOlder people are more likely to have degenerative meniscus tears. Cartilage weakens and wears thin over time. Aged, worn tissue is more prone to tears. Just an awkward twist when getting up from a chair may be enough to cause a tear, if the menisci have weakened with age.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Sudden meniscus tears often happen during sports. Players may squat and twist the knee, causing a tear. Direct contact, like a tackle, is sometimes involved.\nOlder people are more likely to have degenerative meniscus tears. Cartilage weakens and wears thin over time. Aged, worn tissue is more prone to tears. Just an awkward twist when getting up from a chair may be enough to cause a tear, if the menisci have weakened with age. (IMAGE)\nShape\nSymptoms Meniscal tear\nYou might feel a \"pop\" when you tear a meniscus. Most people can still walk on their injured knee. Many athletes keep playing with a tear. Over 2 to 3 days, your knee will gradually become more stiff and swollen.\n1. Pain\n2.Stiffness and swelling\n3.Catching or locking of your knee\n4.The sensation of your knee \"giving way\"\n5.You are not able to move your knee through its full range of motion\n\n\n\nKnee cap dislocation (patellar instability)\nWhat causes kneecap dislocation while playing volleyball? This knee injury is the least common of the 4 injuries detailed in this report. Kneecap (patella) dislocation, or patellar subluxation, occurs when the triangle-shaped bone covering the knee (patella) moves out of place. This is a common occurrence in young athletes, especially female volleyball players.\nMost commonly, the kneecap (patella) dislocates due to a twisting stress to the knee. However, the injury can also occur because of direct contact. If a sudden twisting movement or rapid change in direction occurs, the stress to the knee can cause the kneecap to shift out of place. For example, if a player suddenly changes directions, the force can lead to patellar subluxation or dislocation.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Causes of Knee cap dislocation\n• Changing direction rapidly\n• Stopping suddenly\n• Slowing down while running\n• Landing from a jump incorrectly Direct contact or collision, such as an accident\n\nSymptoms Knee cap dislocation\nWhen a kneecap dislocates, it'll usually look out of place or at an odd angle. But in many cases it'll pop back into place soon afterwards.\n\nOther symptoms can include: o a \"popping\" sensation\no severe knee pain\no being unable to straighten the knee\no sudden swelling of the knee\no being unable to walk\n\nFirst aid\n• Call for Emergency help\n• DO NOT move the individual, if there is a suspicion of other injuries, or if he/she is unable to walk/move\n• DO NOT move the knee joint; doing so may aggravate the injury\n• Try to sit without much movement in a comfortable position\n• If the kneecap has returned to its original position, do not put pressure on the affected limb or try to walk; but, seek medical evaluation and help\n• Apply ice on the injured site to reduce pain and swelling, only if there are no open wounds/injuries\n• If there is bleeding from an associated wound, then take suitable steps (such as direct pressure for severe bleeding) to arrest the bleeding\n• Pain medication. Non-steroidal anti-inflammatory medications, such as ibuprofen or naproxen may be recommended or prescribed to address both the pain and inflammation. Analgesics (such as acetaminophen), pain medications that do not have anti-inflammatory properties, may also be prescribed in order to relieve severe pain.\n• RICE. As a first response treatment to injury, an athlete will be advised to rest, ice, compress and elevate his or her kneecap.\nShape\n\nTreatment\nRelocation: The doctor will move your lower leg back into position, a process called reduction. Most doctors will do reduction after a person has been given pain medication or is given \"conscious sedation,\" where the patient is sedated enough to withstand the discomfort of relocation but not completely sedated. Relocation is an important early step in repairing damage to nerves, blood vessels, ligaments, and other tissues of the knee. Relocation is usually done by emergency and orthopedic doctors.\nSurgery: If an arterial injury is determined to be present, immediate surgery by a trauma or vascular surgeon to repair the injured vessel(s) and maintain blood flow to the leg is necessary.\nImmobilization: To keep further injury from happening and to help with the beginning of healing, the entire knee joint will be kept in a splint or immobilizer. This will keep the knee from bending and help the tissues to start healing.\nReferral: A dislocated knee almost always has severe tears and sprains of the ligaments and sometimes has breaks in the bones of the knee. After swelling has gone down, the knee may need reconstruction surgery to regain function. A bone specialist (orthopedist) will need to see you after this injury.\n\n\nHow to prevent knee cap dislocation\n\n1. Stretch and warm-up before playing.\n2. Eat a balanced diet and drink plenty of water.\n3. Keep up your cardiovascular fitness and core strength.\n4. Get enough rest. ...\n5. Practice good technique. ...\n6. Treat injuries as they occur and allow your body to completely recover before heading back out on the court.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

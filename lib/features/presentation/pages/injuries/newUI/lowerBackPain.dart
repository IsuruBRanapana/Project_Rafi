import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class LowerBackPainView extends StatefulWidget {
  @override
  _LowerBackPainViewState createState() => _LowerBackPainViewState();
}

class _LowerBackPainViewState extends State<LowerBackPainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lower Back Pain'),
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
                AppImages.three,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            // Container(
            //   child: Text(
            //     'Prevention ',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            // ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Baseball players, along with the rest of the general population, frequently complain of lower back pain. More often than not, the pain will resolve spontaneously within several weeks, and as such probably does not indicate serious pathology. However, mechanical back pain is much less common among young athletes, and those individuals 20 years of age or younger who have persistent back pain that limits them from participating in activities (such as baseball) should be evaluated by a sports medicine physician. There are many different causes for back pain, and as a result the exact cause of an individual’s lower back pain often cannot be precisely identified. Baseball players, along with the rest of the general population, frequently complain of lower back pain. More often than not, the pain will resolve spontaneously within several weeks, and as such probably does not indicate serious pathology. However, mechanical back pain is much less common among young athletes, and those individuals 20 years of age or younger who have persistent back pain that limits them from participating in activities should be evaluated by a sports medicine physician. There are many different causes for back pain, and as a result the exact cause of an individual’s lower back pain often cannot be precisely identified.\nThat said, if a young athlete’s low back pain is made worse by lumbar extension (bending backwards), then a stress fracture of the lumbar spine (“spondylolysis”) should be ruled out. If the athlete has suffered an acute strain of the muscles of the low back, then the pain will typically be self-limiting and should baseball players, along with the rest of the general population, frequently complain of lower back pain. More often than not, the pain will resolve spontaneously within several weeks, and as such probably does not indicate serious pathology.\nHowever, mechanical back pain is much less common among young athletes, and those individuals 20 years of age or younger who have persistent back pain that limits them from participating in activities should be evaluated by a sports medicine physician. There are many different causes for back pain, and as a result the exact cause of an individual’s lower back pain often cannot be precisely identified. That said, if a young athlete’s low back pain is made worse by lumbar extension (bending backwards), then a stress fracture of the lumbar spine (“spondylolysis”) should be ruled out.\n\n\n\nFactors affected lower back pain\n\no Setting, serving, and spiking\no Jumping\no Landing jumps\no Bending the knees\no Hyperextending the back\no Twisting the trunk/core\no Running (for conditioning)\n• Playing on a hard or uneven surface\n• Poor techniques ",
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
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Dull, aching pain. Pain that remains within the low back (axial pain) is usually described as dull and aching rather than burning, stinging, or sharp. This kind of pain can be accompanied by mild or severe muscle spasms, limited mobility, and aches in the hips and pelvis.\nPain that travels to the buttocks, legs, and feet.Sometimes low back pain includes a sharp, stinging, tingling or numb sensation that moves down the thighs and into the low legs and feet, also called Sciatica is caused by irritation of the sciatica and is usually only felt on one side of the body.\nPain that is worse after prolonged sitting.Sitting puts pressure on the discs, causing low back pain to worsen after sitting for long periods of time. Walking and stretching can alleviate low back pain quickly, but returning to a sitting position may cause symptoms to return.\nPain that feels better when changing positions.Depending on the underlying cause of pain, some positions will be more comfortable than others. For example, with walking normally may be difficult and painful, but leaning forward onto something, such as a shopping cart, may reduce pain. How symptoms change with shifting positions can help identify the source of pain\nPain that is worse after waking up and better after moving around. Many who experience low back pain report symptoms that are worse first thing in the morning. After getting up and moving around, however, symptoms are relieved. Pain in the morning is due to stiffness caused by long periods of rest, decreased blood flow with sleep, and possibly the quality of mattress and pillows used",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),

            Container(
              child: Text(
                'How to diagnose lower back pain ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "•X-ray. These images show the alignment of your bones and whether you have arthritis or broken bones. These images alone won't show problems with your spinal cord, muscles, nerves or disks.\n• MRI or CT scans. These scans generate images that can reveal herniated disks or problems with bones, muscles, tissue, tendons, nerves, ligaments and blood vessels.\n• Blood tests. These can help determine whether you have an infection or other condition that might be causing your pain.\n• Bone scan. In rare cases, your doctor might use a bone scan to look for bone tumors or compression fractures caused by osteoporosis.\n• Nerve studies. Electromyography (EMG) measures the electrical impulses produced by the nerves and the responses of your muscles. This test can confirm nerve compression caused by herniated disks or narrowing of your spinal canal (spinal stenosis).",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),

            Container(
              child: Text(
                'First aid ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "•Ice your back. To reduce pain and swelling. 20-30 minutes every 3-4 hours for 2-3 days.\n•Apply heat to your back. After 2-3 day icing swelling has gone. electric heating pad or hot water bottle.\n•Take painkillers or other drugs If recommended by your doctor. Non- steroidal anti-inflammatory drugs like Advil, Aleve or Motrin will help to reduce lower back pain.\n•Use support Ask your doctor or therapist first, but consider getting a belt or girdle to add support to your back .use it only short term.\n•Maintain good muscle tone In your abdominal and lower back muscles\n\n\n\nProposed treatment\n\n•Over-the-counter (OTC) pain relievers. Nonsteroidal anti-inflammatory drugs (NSAIDs), such as ibuprofen (Advil, Motrin IB, others) or naproxen sodium (Aleve), might relieve acute back pain. Take these medications only as directed by your doctor. Overuse can cause serious side effects. If OTC pain relievers don't relieve your pain, your doctor might suggest prescription NSAIDs.\n•Muscle relaxants. If mild to moderate back pain doesn't improve with OTC pain relievers, your doctor might also prescribe a muscle relaxant. Muscle relaxants can make you dizzy and sleepy.\n•Topical pain relievers. These are creams, salves or ointments you rub into your skin at the site of your pain.\n•Narcotics. Drugs containing opioids, such as oxycodone or hydrocodone, may be used for a short time with close supervision by your doctor. Opioids don't work well for chronic pain, so your prescription will usually provide less than a week's worth of pills.\n•Antidepressants. Low doses of certain types of antidepressants — particularly tricyclic antidepressants, such as amitriptyline — have been shown to relieve some types of chronic back pain independent of their effect on depression.\n•Injections. If other measures don't relieve your pain, and if your pain radiates down your leg, your doctor may inject cortisone — an anti-inflammatory medication — or numbing medication into the space around your spinal cord (epidural space). A cortisone injection helps decrease inflammation around the nerve roots, but the pain relief usually lasts less than a few months.",
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

import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class ShoulderView extends StatefulWidget {
  @override
  _ShoulderViewState createState() => _ShoulderViewState();
}

class _ShoulderViewState extends State<ShoulderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoulder Injury'),
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
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                AppImages.one,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            Container(
              child: Text(
                  'Baseball is considered a repetitive throwing and hitting activity. In baseball a player should do throwing, hitting, sliding and catching whole match Injuries can be traumaticor cumulative. Traumatic ones involve a sudden force or impact to the shoulder or arm and include rotator cuff tears, dislocations, subluxations (partial dislocations), and separations. '),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                  'We can identified four common shoulder injuries in baseball'),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                child: Text(
                    '1.Rotator cuff tendinitis \n2 .Shoulder sprains \n 3.Shoulder strains \n4.Tears'),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Rotator cuff tendinitis ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Center(
              child: Image.asset(
                AppImages.two,
                width: AppConstants.adaptiveScreen.setWidth(300),
                height: AppConstants.adaptiveScreen.setWidth(300),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'The Rotator Cuff muscles control rotationof the shoulder. They consist of the infraspinatus teres minor and supraspinatus which rotate the shoulder outwards and the subscapularis which is one of the muscles which rotate the shoulder inwards.\n These muscles are put under a great deal of strain especially in throwing events and racket sports where your arm is above your head a lot. A sudden sharp pain in the shoulder would indicate a possible rupture of a tendon, while a gradual onset is more likely to be inflammation. ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Symptoms of Rotator cuff tendinitis',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                '• Pain and swelling in the front of your shoulder and side of your arm\n• pain triggered by raising or lowering your arm\n• a clicking sound when raising your arm\n• stiffness\n• pain that causes you to wake from sleep\n• pain when reaching behind your back\n• a loss of mobility and strength in the affected arm ',
              ),
            ),
            //todo:add image
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'First aid for Rotator cuff tendinitis',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Initial treatment of rotator cuff tendinitis involves managing pain and swelling to promote healing. This can be done by: ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                '•avoiding activities that cause pain\n•applying cold packs to your shoulder three to four times per day\n•taking nonsteroidal anti in-flammatory drugs\n•give rest for rehabilitation ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Proposed treatment ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Your doctor may refer you to a physical therapist. Physical therapy will initially consist of stretching and other passive exercises to help restore range of motion and ease pain. Once the pain is under control, your physical therapist will teach you exercises to help regain strength in your arm and shoulder. ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Steroid injection ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'If your rotator cuff tendinitis isn’t being managed by more conservative treatment, your doctor may recommend a steroid injection. This is injected into the tendon to reduce inflammation, which reduces pain. ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Surgery  ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'If nonsurgical treatment isn’t successful, your doctor may recommend surgery. Most people experience full recovery after having rotator cuff surgery. The most noninvasive form of shoulder surgery is accomplished via arthroscopy. This involves two or three small cuts around your shoulder, through which your doctor will insert various instruments. One of these instruments will have a camera, so your surgeon can view the damaged tissue through the small incisions. ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Shoulder sprain ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'We can identify mainly two shoulder sprains in baseball players.\n1. Acromioclavicular Joint Sprain\n2. Sternoclavicular Joint Sprain ',
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Acromioclavicular Rotator cuff tendinitis ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'The acromioclavicular joint is supported by the acromioclavicular ligament and the coracoclavicular ligament at the outside end of the collarbone near the shoulder. They bind the shoulder blade and collarbone tightly together. It takes a lot of force to tear these ligaments. The most common causes of this type of shoulder sprain are either a strong, direct blow to the front or top part of the shoulder or trauma from a fall, especially during athletic training or competition. A shoulder sprain also can be caused when a person collides with an object, such as a goal post or a tree (when skiing). Shoulder sprains are common among volleyball athletes and who participate in high-velocity or contact sports such as alpine skiing, jet skiing, football, rugby and wrestling. ',
              ),
            ),
            //TODO:Add image
            // Center(
            //   child: Image.asset(
            //     AppImages.one,
            //     width: AppConstants.adaptiveScreen.setWidth(300),
            //     height: AppConstants.adaptiveScreen.setWidth(300),
            //   ),
            // ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Sternoclavicular Joint Sprain ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "The sternoclavicular joint is located where the inner end of the collarbone meets the breastbone. Because the sternoclavicular joint is even more tightly connected than the acromioclavicular joint, sternoclavicular injuries occur very rarely, only about one-fourth as often as acromioclavicular injuries. When the sternoclavicular joint is sprained, it is often when a driver's chest strikes the steering wheel during an auto accident, or when a person is crushed by an object. In athletes, sternoclavicular sprains sometimes are seen among football players and rugby players after a direct kick to the breastbone or some sideways tackles that impacts the back or side of the shoulder",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Symptoms of shoulder sprains ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "•Pain and stiffness in the shoulder\n•Inability to rotate the arm in all the normal positions\n•Lack of strength in the shoulder to carry out daily activities\n•A mild shoulder sprain involves the acromioclavicular (AC) ligament which does not cause the collarbone to move.\n•A more serious injury tears the AC ligament and sprains or slightly tears the coracoclavicular (CC) ligament, putting the collarbone out of alignment to some extent.\n•The most severe shoulder separation completely tears both the AC and CC ligaments and puts the AC joint noticeably out of position ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'First aid',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "The goal of this treatment is to:(PRICE)\n• Reduce pain and swelling\n• Lay the foundation for a good rehabilitation\nWe recommend continuing the treatment for at least 48 hours after the time of the injury. However, some of the elements are more applicable than others.",
              ),
            ),
            //todo:add image
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Proposed treatment ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Treatment depends on the type of sprain and its grade. /n• Acromioclavicular joint sprains — In Grades I or II sprains, the injured shoulder is treated with rest, ice and a nonsteroidal anti-inflammatory drug, such as ibuprofen (Advil, Motrin and others) to relieve pain and swelling. The arm is placed in a sling for one to three weeks. For most Grade III sprains, the sling is worn for four weeks. Some Grade III sprains may require surgery, particularly in very young people, in adults who work at jobs that require heavy lifting, or in people whose collarbone is displaced more than 2 centimeters (about 1 inch) out of its normal position./n• Sternoclavicular joint sprains — Grade I sprains are treated with ice, nonsteroidal anti-inflammatory drugs, and a sling for one to two weeks. In Grade II sprains, the sling is worn for three to six weeks. Grade III sprains require a procedure called closed reduction. This is when the displaced collarbone is carefully slipped back into place after the person has received anesthesia or sedating medicines. Once the collarbone is back in its normal position, the injured shoulder is immobilized using a \"clavicle strap\" or figure-of-eight splint, along with a sling for four to six weeks.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Shoulder strain ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "The shoulder strains is a stretching or tearing of a muscle or tendon in the shoulder. It can happen when the shoulder remains in one position long period of time such as when carrying heavy load un balanced or having poor posture. When playing that require repeated overhead movements of arms also increase a person’s susceptibility to shoulder strain. ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Symptoms of strain ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "o Symptoms including pain\no Decrease range of motion\no Instability ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'shoulder tear ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "A shoulder tear is an injury to the soft tissue that give the joint range of motion and stability. A tear can occur in the tendons the muscles or the labrum a rim of fibrous tissues that lines the glenoid. A tear may be partial or it may sever a tendon muscle or the labrum completely. Overtime small tears in a tendon can lead to a bigger tear. Shoulder tear can be caused by repeated by repeated use or by sudden injury. Years of repetitive arm motion performed during sports can lead to tear. Athletes who play sports that require repetitive motions, such as volleyball, base ball, weight lifting, may experience a shoulder tear. ",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Rotator cuff tear ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Rotator cuff tear occurs in any of the muscles and tendons that connect the upper arm to the scapula Or shoulder blade four rotator cuff muscles help your shoulder to rotate. Four tendons work with the muscle to stabilize the shoulder and allow you to lift and move your arm in many directions.",
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                'Bicep tendon tear ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppConstants.adaptiveScreen.setHeight(20),
            ),
            Container(
              child: Text(
                "Bicep tendon tear occurs in the tendon that attached the bicep muscle to bone. The bicep muscle runs along the humerus and help the arm to bend at the elbow and rotate from side to side .two bicep tendons attach this muscle to the shoulder .the short head tendon connects the bicep muscle to the coracoid projection at the top of shoulder blade. The long head tendon connects the muscle to the top of the glenoid labrum or shoulder joint socket. A tear in the long head tendon is fairly common but short head tendon tears are rare. This is because the position of the long head tendon in the bicep makes it vulnerable to injury.",
              ),
            ),
          ],

        ),
      ),
    );
  }
}

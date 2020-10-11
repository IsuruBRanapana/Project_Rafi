import 'package:flutter_screenutil/flutter_screenutil.dart';

const String PNG_IMAGE_PATH = 'images/png/';
const String JPG_IMAGE_PATH = 'images/jpg/';
const String SVG_IMAGE_PATH = 'images/svg/';
const String SVG_TYPE = '.svg';
const String PNG_TYPE = '.png';
const String JPG_TYPE = '.jpg';

class AppConstants {
  static String APP_VERSION = '1.00.00';
  static final String fontFamily = 'Sarabun';
  static const int SESSION_TIMEOUT = 5;
  static bool isLoggedIn=false;

  static const String URL_TWITTER = 'https://twitter.com';
  static const String URL_FACEBOOK = 'https://facebook.com';
  static const String URL_YOUTUBE = 'https://youtube.com';
  static const String URL_INSTAGRAM = 'https://instagram.com';

  static final ScreenUtil adaptiveScreen = ScreenUtil();

}

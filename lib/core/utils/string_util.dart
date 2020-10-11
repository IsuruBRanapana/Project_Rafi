import 'package:package_info/package_info.dart';
import 'package:project_rafi/core/utils/app_costants.dart';

class StringUtils{
  static String enumName(String enumToString){
    List<String> paths=enumToString.split(".");
    return paths[paths.length-1];
  }

  static void getApplicationVersion() async{
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String versionName = packageInfo.version;
    String versionCode=packageInfo.buildNumber;
    AppConstants.APP_VERSION=versionName;

    print('[App Version $versionName]');
  }
}
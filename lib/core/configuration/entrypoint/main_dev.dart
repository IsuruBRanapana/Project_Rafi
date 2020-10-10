import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/enums.dart';
import 'package:project_rafi/core/utils/string_util.dart';
import 'package:project_rafi/core/injection_container.dart' as di;

import '../../app.dart';
import '../flavor_config.dart';

void main() async {
  FlavorConfig(
      flavor: Flavor.DEV,
      color: Colors.amber,
      values: FlavorValues(baseUrl: '192.168.20.121:6589/es_dev/api/v1'));
  WidgetsFlutterBinding.ensureInitialized();
  StringUtils.getApplicationVersion();
  await di.init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: MyApp(),
      onPanDown: (_) {
        if (AppConstants.isLoggedIn) {
//          _session.resetSession();
        }
      },
    ),
  );
}

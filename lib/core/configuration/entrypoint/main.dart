
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_rafi/core/configuration/flavor_config.dart';
import 'package:project_rafi/core/utils/app_costants.dart';
import 'package:project_rafi/core/utils/enums.dart';
import 'package:project_rafi/core/injection_container.dart' as di;
import 'package:project_rafi/core/utils/string_util.dart';

import '../../app.dart';

void main() async {
  FlavorConfig(flavor: Flavor.PRODUCTION, color: Colors.amber, values: FlavorValues(baseUrl: ''));
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  StringUtils.getApplicationVersion();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

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

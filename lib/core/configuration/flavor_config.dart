import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/enums.dart';
import 'package:project_rafi/core/utils/string_util.dart';

class FlavorValues {
  FlavorValues({@required this.baseUrl});

  final String baseUrl;
//TODO: Add other flavor specific values, e.g API Keys
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;
  static FlavorConfig _instance;

  factory FlavorConfig({
    @required Flavor flavor,
    Color color: Colors.blue,
    @required FlavorValues values,
  }) {
    _instance ??= FlavorConfig._internal(flavor, StringUtils.enumName(flavor.toString()), color, values);

    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.name, this.color, this.values);

  static FlavorConfig get instance {
    return _instance;
  }

  static bool isLive() => _instance.flavor == Flavor.PRODUCTION;

  static bool isDevelopment() => _instance.flavor == Flavor.DEV;

  static bool isQA() => _instance.flavor == Flavor.QA;

  static bool isUAT() => _instance.flavor == Flavor.UAT;
}

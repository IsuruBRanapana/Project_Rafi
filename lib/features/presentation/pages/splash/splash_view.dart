import 'package:flutter/material.dart';
import 'package:project_rafi/features/presentation/pages/base_view.dart';
import 'package:project_rafi/features/presentation/pages/splash/widgets/splash_image_viewer.dart';

class SplashView extends BaseView {
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(body: SplashImageViewer());
  }
}

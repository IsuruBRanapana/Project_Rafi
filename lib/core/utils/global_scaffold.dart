import 'package:flutter/cupertino.dart';

class ScaffoldGlobals{
  GlobalKey _scaffoldKey;

  ScaffoldGlobals(){
    _scaffoldKey=GlobalKey();
  }

  GlobalKey get scaffoldKey=>_scaffoldKey;
}
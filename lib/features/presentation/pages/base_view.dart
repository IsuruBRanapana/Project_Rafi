import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_dialog/progress_dialog.dart';

abstract class BaseView extends StatefulWidget {
  @override
  _BaseViewState createState() => _BaseViewState();

  @protected
  Widget buildView(BuildContext context);

  ScreenUtil adaptiveScreen;
  var pr;
  Function wp;

  Function hp;
}

class _BaseViewState extends State<BaseView> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(720,1208));

    _buildProgressDialog(context);
    widget.adaptiveScreen = ScreenUtil();
    Firebase.initializeApp();

    print('Height: ${ScreenUtil.defaultSize.height}');
    print('Width: ${ScreenUtil.defaultSize.width}');

    return widget.buildView(context);
  }

  void showMessageDialog(BuildContext context, {String title, String message}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  widget.pr.hide();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  _buildProgressDialog(BuildContext context) {
    widget.pr = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false);
    widget.pr.style(
        message: 'Loading',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600));
  }
}
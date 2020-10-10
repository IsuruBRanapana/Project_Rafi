import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

    widget.adaptiveScreen = ScreenUtil();

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
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstatefuladvanceddemo/check_box_demo_page.dart';
class IosStylePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Demo IOS page'),
      ),
      child: SafeArea(
        child: CupertinoButton(
          child: Text('Click me'),
          onPressed:(){
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder:(context)=>CheckBoxDemoPage()
              )
            );
          } ,
          color: Colors.blue,
          )
      ),
    );
  }
}

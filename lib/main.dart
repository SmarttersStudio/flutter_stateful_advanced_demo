import 'package:flutter/material.dart';
import 'package:flutterstatefuladvanceddemo/check_box_demo_page.dart';
import 'package:flutterstatefuladvanceddemo/drop_down_demo_page.dart';
import 'package:flutterstatefuladvanceddemo/ios_style_page.dart';
import 'package:flutterstatefuladvanceddemo/radio_demo_page.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropDownListPage(),
    );
  }
}

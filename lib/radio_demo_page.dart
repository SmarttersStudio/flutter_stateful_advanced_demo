import 'package:flutter/material.dart';
class RadioDemoPage extends StatefulWidget {
  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  int groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Demo Page'),
      ),
      body:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Radio(value: 1, groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value;
                });
              },),
              Text('Male'),
              Radio(value: 2, groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value;
                });
              }),
              Text('Female'),
              Radio(value: 3, groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value;
                });
              }),
              Text('Others'),
            ],
          ),
          Text(getTitle())
        ],
      )
    );
  }

  String getTitle() {
    switch(groupValue){
      case -1:
        return 'Nothing selected';
      case 1:
        return 'Male Selected';
      case 2:
        return 'Female selected';
      default:
        return 'Others Selected';
    }
  }
}

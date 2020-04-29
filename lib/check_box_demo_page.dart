import 'package:flutter/material.dart';
class CheckBoxDemoPage extends StatefulWidget {
  @override
  _CheckBoxDemoPageState createState() => _CheckBoxDemoPageState();
}

class _CheckBoxDemoPageState extends State<CheckBoxDemoPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox Demo'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(value: isChecked, onChanged: (value){
                setState(() {
                  isChecked = value ;
                });
              }),
              Text('I accept the terms & conditions')
            ],
          ),
          RaisedButton(
            onPressed: isChecked?(){
              Navigator.of(context).pop();
            }:null,
            child: Text('Register'),
          )
          
        ],
      ),
    );
  }
}

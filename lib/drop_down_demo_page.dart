import 'package:flutter/material.dart';
class DropDownListPage extends StatefulWidget {
  @override
  _DropDownListPageState createState() => _DropDownListPageState();
}

class _DropDownListPageState extends State<DropDownListPage> {
  int selectedItem=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Demo'),
      ),
      body:DropdownButton(
        value: selectedItem,
        items: [
          DropdownMenuItem(child: Icon(Icons.add),value: 1,),
          DropdownMenuItem(child: Text('Two'),value: 2,),
          DropdownMenuItem(child: Text('Three'),value: 3,),
          DropdownMenuItem(child: Text('Four'),value: 4,),
          DropdownMenuItem(child: Text('Five'),value: 5,),
        ],
        onChanged: (value){
          setState(() {
            selectedItem = value ;
          });
      })
    );
  }
}

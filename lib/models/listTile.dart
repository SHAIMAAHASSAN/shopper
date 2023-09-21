import 'package:flutter/material.dart';

class ListTileShop extends StatelessWidget {
  String nameProd;
  bool isChecked ;
  void Function(bool?)checkBoxChange;
  ListTileShop( this.nameProd,this.isChecked,this.checkBoxChange);




  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          nameProd,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(value: isChecked, onChanged: checkBoxChange,
        activeColor: Colors.cyan,)
         // (bool? newValue) {
           // setState(() {
            //  isChecked = newValue!;
           // }

    );
          }


  }


class CheckBox extends StatelessWidget {
  final bool? checkBoxState;
  final Function(bool?) checkBoxChange;
  CheckBox(this.checkBoxState, this.checkBoxChange);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: checkBoxChange,
      activeColor: Colors.cyan,
    );

  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final Function onPressed;
  final String name;
  Button({required this.name,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: double.infinity,
        child: RaisedButton(
            onPressed: (){onPressed();},
            child: Text(name),
            color: Colors.blueGrey[400]
        )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ontap extends StatelessWidget{
  final String secStr;
  final Function onTap;
  final String primaryStr;
  Ontap({required this.secStr,required this.onTap,required this.primaryStr});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(secStr),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: (){onTap();},
          child: Text(
            primaryStr,style: const TextStyle(
              color: Colors.cyan,
              fontSize: 20
            ),
          ),
        )
      ],
    );
  }
}
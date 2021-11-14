import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget{
  final Function validator;
  final String name;
  InputText({required this.validator,required this.name});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        validator(value);
      },
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: name,
          hintStyle: const TextStyle(
            color: Colors.black,
          )
      ),
    );
  }
}
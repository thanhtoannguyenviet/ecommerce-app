
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget{
  final String name;
  final bool obserText;
  final Function validator;
  final Function onTap;
  PasswordTextField({required this.name, required this.obserText, required this.validator, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obserText,
      validator: (value){
        validator(value);
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: name,
        hintStyle: const TextStyle(
            color: Colors.black
        ),
        suffixIcon: GestureDetector(
          onTap: (){
            onTap();
          },
          child: Icon(
            obserText == true? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
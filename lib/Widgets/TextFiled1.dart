import 'package:flutter/material.dart';

class Textfiled extends StatelessWidget {

final String labelText;
final bool? obsText;
final TextEditingController filedControl;
final TextInputType? inputType;
final String? Function(String?) valid;
  
  const Textfiled({required this.filedControl,required this.inputType,required this.obsText,required this.labelText,required this.valid ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      padding: EdgeInsets.symmetric(vertical:5,horizontal: 5),
      child: TextFormField(
      controller: filedControl,
      keyboardType: inputType,
      validator: valid,
      //minLines: 2,
      maxLines: 2,
      decoration: InputDecoration(
      labelText: labelText,
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
      ),
      ),


    );
  }
}